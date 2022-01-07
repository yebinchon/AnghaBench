
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool is_exactmatch(void *mask, int len)
{
 const u8 *p = mask;
 int i;

 for (i = 0; i < len; i++)
  if (p[i] != 0xff)
   return 0;

 return 1;
}
