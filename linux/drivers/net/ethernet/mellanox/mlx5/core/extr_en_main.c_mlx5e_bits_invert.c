
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_bit (int,unsigned long*) ;

int mlx5e_bits_invert(unsigned long a, int size)
{
 int inv = 0;
 int i;

 for (i = 0; i < size; i++)
  inv |= (test_bit(size - i - 1, &a) ? 1 : 0) << i;

 return inv;
}
