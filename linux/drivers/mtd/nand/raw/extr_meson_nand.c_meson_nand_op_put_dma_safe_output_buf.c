
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void const* out; } ;
struct TYPE_5__ {TYPE_1__ buf; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct nand_op_instr {scalar_t__ type; TYPE_3__ ctx; } ;


 scalar_t__ NAND_OP_DATA_OUT_INSTR ;
 scalar_t__ WARN_ON (int) ;
 int kfree (void const*) ;

__attribute__((used)) static void
meson_nand_op_put_dma_safe_output_buf(const struct nand_op_instr *instr,
          const void *buf)
{
 if (WARN_ON(instr->type != NAND_OP_DATA_OUT_INSTR) ||
     WARN_ON(!buf))
  return;

 if (buf != instr->ctx.data.buf.out)
  kfree(buf);
}
