import unittest
import matrix

# version 1.1.0

suite "Matrix":
  test "extract row from one number matrix":
    check row("1", 1) == @[1]

  test "can extract row":
    check row("1 2\n3 4", 2) == @[3, 4]

  test "extract row where numbers have different widths":
    check row("1 2\n10 20", 2) == @[10, 20]

  test "can extract row from non-square matrix":
    check row("1 2 3\n4 5 6\n7 8 9\n8 7 6", 3) == @[7, 8, 9]

  test "extract column from one number matrix":
    check column("1", 1) == @[1]

  test "can extract column":
    check column("1 2 3\n4 5 6\n7 8 9", 3) == @[3, 6, 9]

  test "can extract column from non-square matrix":
    check column("1 2 3\n4 5 6\n7 8 9\n8 7 6", 3) == @[3, 6, 9, 6]

  test "extract column where numbers have different widths":
    check column("89 1903 3\n18 3 1\n9 4 800", 2) == @[1903, 3, 4]
