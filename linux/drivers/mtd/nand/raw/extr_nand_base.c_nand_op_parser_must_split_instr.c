
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {unsigned int maxlen; } ;
struct TYPE_8__ {unsigned int maxcycles; } ;
struct TYPE_12__ {TYPE_5__ data; TYPE_2__ addr; } ;
struct nand_op_parser_pattern_elem {int type; TYPE_6__ ctx; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_7__ {int naddrs; } ;
struct TYPE_10__ {TYPE_3__ data; TYPE_1__ addr; } ;
struct nand_op_instr {TYPE_4__ ctx; } ;






__attribute__((used)) static bool
nand_op_parser_must_split_instr(const struct nand_op_parser_pattern_elem *pat,
    const struct nand_op_instr *instr,
    unsigned int *start_offset)
{
 switch (pat->type) {
 case 130:
  if (!pat->ctx.addr.maxcycles)
   break;

  if (instr->ctx.addr.naddrs - *start_offset >
      pat->ctx.addr.maxcycles) {
   *start_offset += pat->ctx.addr.maxcycles;
   return 1;
  }
  break;

 case 129:
 case 128:
  if (!pat->ctx.data.maxlen)
   break;

  if (instr->ctx.data.len - *start_offset >
      pat->ctx.data.maxlen) {
   *start_offset += pat->ctx.data.maxlen;
   return 1;
  }
  break;

 default:
  break;
 }

 return 0;
}
