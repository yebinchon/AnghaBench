
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_subop {unsigned int ninstrs; } ;



__attribute__((used)) static bool nand_subop_instr_is_valid(const struct nand_subop *subop,
          unsigned int instr_idx)
{
 return subop && instr_idx < subop->ninstrs;
}
