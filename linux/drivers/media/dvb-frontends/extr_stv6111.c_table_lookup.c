
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct slookup {scalar_t__ reg_value; int value; } ;
typedef int s32 ;



__attribute__((used)) static s32 table_lookup(const struct slookup *table,
   int table_size, u16 reg_value)
{
 s32 gain;
 s32 reg_diff;
 int imin = 0;
 int imax = table_size - 1;
 int i;


 if (reg_value <= table[0].reg_value) {
  gain = table[0].value;
 } else if (reg_value >= table[imax].reg_value) {
  gain = table[imax].value;
 } else {
  while ((imax - imin) > 1) {
   i = (imax + imin) / 2;
   if ((table[imin].reg_value <= reg_value) &&
       (reg_value <= table[i].reg_value))
    imax = i;
   else
    imin = i;
  }
  reg_diff = table[imax].reg_value - table[imin].reg_value;
  gain = table[imin].value;
  if (reg_diff != 0)
   gain += ((s32)(reg_value - table[imin].reg_value) *
    (s32)(table[imax].value
    - table[imin].value)) / reg_diff;
 }
 return gain;
}
