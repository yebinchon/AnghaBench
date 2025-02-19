
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_subop {TYPE_1__* instrs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ NAND_OP_ADDR_INSTR ;
 scalar_t__ WARN_ON (int) ;
 unsigned int nand_subop_get_start_off (struct nand_subop const*,unsigned int) ;
 int nand_subop_instr_is_valid (struct nand_subop const*,unsigned int) ;

unsigned int nand_subop_get_addr_start_off(const struct nand_subop *subop,
        unsigned int instr_idx)
{
 if (WARN_ON(!nand_subop_instr_is_valid(subop, instr_idx) ||
      subop->instrs[instr_idx].type != NAND_OP_ADDR_INSTR))
  return 0;

 return nand_subop_get_start_off(subop, instr_idx);
}
