
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int qm_add32 (int,int) ;

s32 qm_shl32(s32 op, int shift)
{
 int i;
 s32 result;
 result = op;
 if (shift > 31)
  shift = 31;
 else if (shift < -31)
  shift = -31;
 if (shift >= 0) {
  for (i = 0; i < shift; i++)
   result = qm_add32(result, result);
 } else {
  result = result >> (-shift);
 }

 return result;
}
