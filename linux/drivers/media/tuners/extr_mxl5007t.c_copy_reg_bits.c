
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_pair_t {scalar_t__ reg; scalar_t__ val; } ;



__attribute__((used)) static void copy_reg_bits(struct reg_pair_t *reg_pair1,
     struct reg_pair_t *reg_pair2)
{
 unsigned int i, j;

 i = j = 0;

 while (reg_pair1[i].reg || reg_pair1[i].val) {
  while (reg_pair2[j].reg || reg_pair2[j].val) {
   if (reg_pair1[i].reg != reg_pair2[j].reg) {
    j++;
    continue;
   }
   reg_pair2[j].val = reg_pair1[i].val;
   break;
  }
  i++;
 }
 return;
}
