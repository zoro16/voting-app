find . -type f -name '*.pdf' -print0 |
  while IFS= read -r -d '' file
    do convert -verbose "${file}" "${file%.*}.png"
  done
