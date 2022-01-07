
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_subop {int * instrs; } ;


 scalar_t__ WARN_ON (int) ;
 int nand_instr_is_data (int *) ;
 unsigned int nand_subop_get_start_off (struct nand_subop const*,unsigned int) ;
 int nand_subop_instr_is_valid (struct nand_subop const*,unsigned int) ;

unsigned int nand_subop_get_data_start_off(const struct nand_subop *subop,
        unsigned int instr_idx)
{
 if (WARN_ON(!nand_subop_instr_is_valid(subop, instr_idx) ||
      !nand_instr_is_data(&subop->instrs[instr_idx])))
  return 0;

 return nand_subop_get_start_off(subop, instr_idx);
}
