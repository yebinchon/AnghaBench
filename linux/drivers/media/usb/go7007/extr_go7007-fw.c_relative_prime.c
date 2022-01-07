
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int relative_prime(int big, int little)
{
 int remainder;

 while (little != 0) {
  remainder = big % little;
  big = little;
  little = remainder;
 }
 return big;
}
