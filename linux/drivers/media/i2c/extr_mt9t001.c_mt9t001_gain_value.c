
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;



__attribute__((used)) static u16 mt9t001_gain_value(s32 *gain)
{
 if (*gain <= 32)
  return *gain;

 if (*gain <= 64) {
  *gain &= ~1;
  return (1 << 6) | (*gain >> 1);
 }

 *gain &= ~7;
 return ((*gain - 64) << 5) | (1 << 6) | 32;
}
