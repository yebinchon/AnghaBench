
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;



s32 qm_add32(s32 op1, s32 op2)
{
 s32 result;
 result = op1 + op2;
 if (op1 < 0 && op2 < 0 && result > 0)
  result = 0x80000000;
 else if (op1 > 0 && op2 > 0 && result < 0)
  result = 0x7fffffff;

 return result;
}
