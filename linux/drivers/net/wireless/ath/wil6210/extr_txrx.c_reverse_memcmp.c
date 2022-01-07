
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int reverse_memcmp(const void *cs, const void *ct, size_t count)
{
 const unsigned char *su1, *su2;
 int res = 0;

 for (su1 = cs + count - 1, su2 = ct + count - 1; count > 0;
      --su1, --su2, count--) {
  res = *su1 - *su2;
  if (res)
   break;
 }
 return res;
}
