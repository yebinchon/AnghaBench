
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
div_round_integer(unsigned int x, unsigned int y)
{
 for (;; y++) {
  if (x % y == 0)
   return x / y;
 }
}
