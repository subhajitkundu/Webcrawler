#!/bin/bash
rm -rf index*
echo "Enter the full domain url"
read url
wget $url
cat index.html |grep -o "<a href=[^>]*>" | sed -r 's/<a href="([^"]*)".*>/\l/' | sort -u >crawl.txt
echo "the crawl list is shown below"
cat crawl.txt
