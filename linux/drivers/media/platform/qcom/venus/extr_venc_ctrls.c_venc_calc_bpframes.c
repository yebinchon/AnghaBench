
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int venc_calc_bpframes(u32 gop_size, u32 conseq_b, u32 *bf, u32 *pf)
{
 u32 half = (gop_size - 1) >> 1;
 u32 b, p, ratio;
 bool found = 0;

 if (!gop_size)
  return -EINVAL;

 *bf = *pf = 0;

 if (!conseq_b) {
  *pf = gop_size - 1;
  return 0;
 }

 b = p = half;

 for (; b <= gop_size - 1; b++, p--) {
  if (b % p)
   continue;

  ratio = b / p;

  if (ratio == conseq_b) {
   found = 1;
   break;
  }

  if (ratio > conseq_b)
   break;
 }

 if (!found)
  return -EINVAL;

 if (b + p + 1 != gop_size)
  return -EINVAL;

 *bf = b;
 *pf = p;

 return 0;
}
