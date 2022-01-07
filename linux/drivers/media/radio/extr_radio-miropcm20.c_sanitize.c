
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool sanitize(char *p, int size)
{
 int i;
 bool ret = 1;

 for (i = 0; i < size; i++) {
  if (p[i] < 32) {
   p[i] = ' ';
   ret = 0;
  }
 }
 return ret;
}
