
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_subop {unsigned int first_instr_start_off; } ;



__attribute__((used)) static unsigned int nand_subop_get_start_off(const struct nand_subop *subop,
          unsigned int instr_idx)
{
 if (instr_idx)
  return 0;

 return subop->first_instr_start_off;
}
