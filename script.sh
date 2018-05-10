#!/usr/bin/env bash

rm song.list;
find FullSongs/* | while read f; do 
	cat "$f" | { read -r style; read -r titre; read -r artiste; read -r langue;
	echo "\\\\artisongtxt{$titre}{$artiste}{$langue}{$f}" >> song.list; }
done
