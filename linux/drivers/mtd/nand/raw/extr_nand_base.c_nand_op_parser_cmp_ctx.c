
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ninstrs; scalar_t__ last_instr_end_off; } ;
struct nand_op_parser_ctx {TYPE_1__ subop; } ;



__attribute__((used)) static int nand_op_parser_cmp_ctx(const struct nand_op_parser_ctx *a,
      const struct nand_op_parser_ctx *b)
{
 if (a->subop.ninstrs < b->subop.ninstrs)
  return -1;
 else if (a->subop.ninstrs > b->subop.ninstrs)
  return 1;

 if (a->subop.last_instr_end_off < b->subop.last_instr_end_off)
  return -1;
 else if (a->subop.last_instr_end_off > b->subop.last_instr_end_off)
  return 1;

 return 0;
}
