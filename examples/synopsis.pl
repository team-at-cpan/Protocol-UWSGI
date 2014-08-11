use strict;
use warnings;
use Protocol::UWSGI;
my $uwsgi = Protocol::UWSGI->new;
# Encode...
my $req = $uwsgi->build_request(
  uri    => 'http://localhost',
  method => 'GET',
  remote => '1.2.3.4:1234',
);
# ... and decode again
warn "URI was " . $uwsgi->uri_from_env(
  $uwsgi->extract_frame(\$req)
);

