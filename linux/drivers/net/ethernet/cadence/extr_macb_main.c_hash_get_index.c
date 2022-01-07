
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int hash_bit_value (int,int *) ;

__attribute__((used)) static int hash_get_index(__u8 *addr)
{
 int i, j, bitval;
 int hash_index = 0;

 for (j = 0; j < 6; j++) {
  for (i = 0, bitval = 0; i < 8; i++)
   bitval ^= hash_bit_value(i * 6 + j, addr);

  hash_index |= (bitval << j);
 }

 return hash_index;
}
