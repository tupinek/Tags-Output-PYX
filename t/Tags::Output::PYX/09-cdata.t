# Modules.
use Tags::Output::PYX;
use Test::More 'tests' => 1;

my $obj = Tags::Output::PYX->new;
$obj->put(
	['cd', '<tag attr="value">'],
);
my $ret = $obj->flush;
my $right_ret = <<'END';
-<tag attr="value">
END
chomp $right_ret;
is($ret, $right_ret);
