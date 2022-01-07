
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;
typedef scalar_t__ s16 ;



s16 qm_add16(s16 op1, s16 op2)
{
 s16 result;
 s32 temp = (s32) op1 + (s32) op2;
 if (temp > (s32) 0x7fff)
  result = (s16) 0x7fff;
 else if (temp < (s32) 0xffff8000)
  result = (s16) 0xffff8000;
 else
  result = (s16) temp;

 return result;
}
