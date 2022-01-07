
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_op_parser_pattern {unsigned int nelems; TYPE_2__* elems; } ;
struct TYPE_3__ {unsigned int first_instr_start_off; unsigned int ninstrs; unsigned int last_instr_end_off; struct nand_op_instr* instrs; } ;
struct nand_op_parser_ctx {int ninstrs; TYPE_1__ subop; struct nand_op_instr* instrs; } ;
struct nand_op_instr {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; int optional; } ;


 scalar_t__ nand_op_parser_must_split_instr (TYPE_2__*,struct nand_op_instr const*,unsigned int*) ;

__attribute__((used)) static bool
nand_op_parser_match_pat(const struct nand_op_parser_pattern *pat,
    struct nand_op_parser_ctx *ctx)
{
 unsigned int instr_offset = ctx->subop.first_instr_start_off;
 const struct nand_op_instr *end = ctx->instrs + ctx->ninstrs;
 const struct nand_op_instr *instr = ctx->subop.instrs;
 unsigned int i, ninstrs;

 for (i = 0, ninstrs = 0; i < pat->nelems && instr < end; i++) {







  if (instr->type != pat->elems[i].type) {
   if (!pat->elems[i].optional)
    return 0;

   continue;
  }
  if (nand_op_parser_must_split_instr(&pat->elems[i], instr,
          &instr_offset)) {
   ninstrs++;
   i++;
   break;
  }

  instr++;
  ninstrs++;
  instr_offset = 0;
 }







 if (!ninstrs)
  return 0;






 for (; i < pat->nelems; i++) {
  if (!pat->elems[i].optional)
   return 0;
 }





 ctx->subop.ninstrs = ninstrs;
 ctx->subop.last_instr_end_off = instr_offset;

 return 1;
}
