
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static bool bits_set(void *key, int len)
{
 const u8 *p = key;
 int i;

 for (i = 0; i < len; i++)
  if (p[i] != 0)
   return 1;

 return 0;
}
