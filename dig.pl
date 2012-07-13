#!/usr/bin/perl

$host = "google.co.jp";
$addr = (gethostbyname($host))[4];
$addr = sprintf("%u.%u.%u.%u", unpack("C*", $addr));

$host = gethostbyaddr(pack("C4", split(/\./, $addr)), 2);

print "$addr, $host\n";
