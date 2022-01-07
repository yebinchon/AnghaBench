
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ out; } ;
struct TYPE_6__ {int len; TYPE_1__ buf; } ;
struct TYPE_5__ {TYPE_3__ data; } ;
struct nand_op_instr {scalar_t__ type; TYPE_2__ ctx; } ;


 int GFP_KERNEL ;
 scalar_t__ NAND_OP_DATA_OUT_INSTR ;
 scalar_t__ WARN_ON (int) ;
 void* kmemdup (scalar_t__,int ,int ) ;
 scalar_t__ meson_nfc_is_buffer_dma_safe (scalar_t__) ;

__attribute__((used)) static void *
meson_nand_op_get_dma_safe_output_buf(const struct nand_op_instr *instr)
{
 if (WARN_ON(instr->type != NAND_OP_DATA_OUT_INSTR))
  return ((void*)0);

 if (meson_nfc_is_buffer_dma_safe(instr->ctx.data.buf.out))
  return (void *)instr->ctx.data.buf.out;

 return kmemdup(instr->ctx.data.buf.out,
         instr->ctx.data.len, GFP_KERNEL);
}
