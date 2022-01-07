
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* in; } ;
struct TYPE_5__ {int len; TYPE_1__ buf; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct nand_op_instr {scalar_t__ type; TYPE_3__ ctx; } ;


 int GFP_KERNEL ;
 scalar_t__ NAND_OP_DATA_IN_INSTR ;
 scalar_t__ WARN_ON (int) ;
 void* kzalloc (int ,int ) ;
 scalar_t__ meson_nfc_is_buffer_dma_safe (void*) ;

__attribute__((used)) static void *
meson_nand_op_get_dma_safe_input_buf(const struct nand_op_instr *instr)
{
 if (WARN_ON(instr->type != NAND_OP_DATA_IN_INSTR))
  return ((void*)0);

 if (meson_nfc_is_buffer_dma_safe(instr->ctx.data.buf.in))
  return instr->ctx.data.buf.in;

 return kzalloc(instr->ctx.data.len, GFP_KERNEL);
}
