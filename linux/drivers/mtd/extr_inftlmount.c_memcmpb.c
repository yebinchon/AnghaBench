
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int memcmpb(void *a, int c, int n)
{
 int i;
 for (i = 0; i < n; i++) {
  if (c != ((unsigned char *)a)[i])
   return 1;
 }
 return 0;
}
