
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;
typedef int s16 ;



s16 qm_norm32(s32 op)
{
 u16 u16extraSignBits;
 if (op == 0) {
  return 31;
 } else {
  u16extraSignBits = 0;
  while ((op >> 31) == (op >> 30)) {
   u16extraSignBits++;
   op = op << 1;
  }
 }
 return u16extraSignBits;
}
