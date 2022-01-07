
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;



int ubi_check_pattern(const void *buf, uint8_t patt, int size)
{
 int i;

 for (i = 0; i < size; i++)
  if (((const uint8_t *)buf)[i] != patt)
   return 0;
 return 1;
}
