use base "basetest";
use bmwqemu;
# test for equivalent of bug https://bugzilla.novell.com/show_bug.cgi?id=
sub run()
{
	my $self=shift;
	script_run('test -L /etc/mtab && echo OK || echo fail');
	$self->take_screenshot;
	script_run('cat /etc/mtab');
}

sub checklist()
{
	# return hashref:
	return {qw(
		b599a8de2eb5ad035ed73885fcf88938 OK
		00dea19199831aa1968510b468a1bdb1 OK
		f7a1f8a00ae4abeffffe846e988e6b50 OK
		479aeddcdb29e1a9dbe7ef3d5ee92e7b OK
		5ac14aad117458115b5da48a2dd64215 OK
		beaa2e18f8b4766ab846a8b24f118dab OK
		bccf62fc7c54a948bdffa04ca8f49a76 OK
		ca2491e41e1ad528075d8ac76640b15a OK
		5b5e1f5551b7f7aa7034e69867e13cce OK
		d0ee40ffd898fa4821bd100ed45a00f4 fail
		80bfbe29fe73f77040576b4795f0eba0 fail
		2e16afd5680f7ddd2da3568fc354d1bb fail
		5f94b366fe64daee095975294af8734c fail
		1728ba8196f6a98be822f0e608aac4d3 fail
	)}
}

1;
