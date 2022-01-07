
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EINVAL ;

__attribute__((used)) static int spi_nor_hwcaps2cmd(u32 hwcaps, const int table[][2], size_t size)
{
 size_t i;

 for (i = 0; i < size; i++)
  if (table[i][0] == (int)hwcaps)
   return table[i][1];

 return -EINVAL;
}
