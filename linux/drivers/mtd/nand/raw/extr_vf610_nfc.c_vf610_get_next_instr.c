
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_subop {int ninstrs; struct nand_op_instr const* instrs; } ;
struct nand_op_instr {int dummy; } ;



__attribute__((used)) static inline const struct nand_op_instr *
vf610_get_next_instr(const struct nand_subop *subop, int *op_id)
{
 if (*op_id + 1 >= subop->ninstrs)
  return ((void*)0);

 (*op_id)++;

 return &subop->instrs[*op_id];
}
