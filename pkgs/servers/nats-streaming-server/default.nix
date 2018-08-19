{  buildGoPackage, fetchFromGitHub, lib  }:

with lib;

buildGoPackage rec {
  name = "nats-streaming-server-${version}";
  version = "0.10.2";
  rev = "v${version}";

  goPackagePath = "github.com/nats-io/nats-streaming-server";

  src = fetchFromGitHub {
    inherit rev;
    owner = "nats-io";
    repo = "nats-streaming-server";
	sha256 = "0iy721rrx2v0vvhwrr3rpbx2hs4fbfbc2arln0ghcx5hnpxc7290";
  };

  meta = {
    description = "NATS streaming system server";
    license = licenses.asl20;
    maintainers = [ maintainers.swdunlop ];
    homepage = https://nats.io/;
    platforms = platforms.all;
  };
}
