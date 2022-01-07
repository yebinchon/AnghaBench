
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_parity(int number, int size)
{
  int k;
 int parity;

 parity = 1;
 for (k = 0; k < size; k++) {
  parity += (number >> k);
  parity &= 1;
 }
 return parity;
}
