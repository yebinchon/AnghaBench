
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct reg_pair_t {scalar_t__ reg; scalar_t__ val; } ;



__attribute__((used)) static void set_reg_bits(struct reg_pair_t *reg_pair, u8 reg, u8 mask, u8 val)
{
 unsigned int i = 0;

 while (reg_pair[i].reg || reg_pair[i].val) {
  if (reg_pair[i].reg == reg) {
   reg_pair[i].val &= ~mask;
   reg_pair[i].val |= val;
  }
  i++;

 }
 return;
}
