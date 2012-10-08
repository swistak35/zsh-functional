This is right fold, in haskell notation obeying
foldr f z [x1, x2, ..., xn] == x1 `f` (x2 `f` ... (xn `f` z)...)

  $ foldright 'echo "($x <--> $acc)"' z x1 x2
  (x1 <--> (x2 <--> z))

Also acc is $2 and x is $1 now unlike fold left

  $ foldright 'echo "($1 <--> $2)"' z x1 x2
  (x1 <--> (x2 <--> z))

You can add numbers

  $ foldright 'echo $[ $x+$acc ]' {0..5}
  15