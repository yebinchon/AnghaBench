
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


typedef size_t u32 ;
struct nand_operation {size_t ninstrs; struct nand_op_instr* instrs; int cs; } ;
struct TYPE_11__ {int timeout_ms; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {int naddrs; int* addrs; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_3__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; int delay_ns; TYPE_6__ ctx; } ;
struct nand_chip {int dummy; } ;
struct meson_nfc_nand_chip {int level1_divider; } ;
struct TYPE_8__ {size_t chip_select; } ;
struct meson_nfc {scalar_t__ reg_base; TYPE_2__ param; } ;


 size_t DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;





 int NFC_CLK_CYCLE ;
 size_t NFC_CMD_ALE ;
 size_t NFC_CMD_CLE ;
 scalar_t__ NFC_REG_CMD ;
 int PSEC_TO_NSEC (int ) ;
 void* meson_nand_op_get_dma_safe_input_buf (struct nand_op_instr const*) ;
 void* meson_nand_op_get_dma_safe_output_buf (struct nand_op_instr const*) ;
 int meson_nand_op_put_dma_safe_input_buf (struct nand_op_instr const*,void*) ;
 int meson_nand_op_put_dma_safe_output_buf (struct nand_op_instr const*,void*) ;
 int meson_nfc_cmd_idle (struct meson_nfc*,size_t) ;
 int meson_nfc_queue_rb (struct meson_nfc*,int ) ;
 int meson_nfc_read_buf (struct nand_chip*,void*,int ) ;
 int meson_nfc_select_chip (struct nand_chip*,int ) ;
 int meson_nfc_wait_cmd_finish (struct meson_nfc*,int) ;
 int meson_nfc_write_buf (struct nand_chip*,void*,int ) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static int meson_nfc_exec_op(struct nand_chip *nand,
        const struct nand_operation *op, bool check_only)
{
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 const struct nand_op_instr *instr = ((void*)0);
 void *buf;
 u32 op_id, delay_idle, cmd;
 int i;

 meson_nfc_select_chip(nand, op->cs);
 for (op_id = 0; op_id < op->ninstrs; op_id++) {
  instr = &op->instrs[op_id];
  delay_idle = DIV_ROUND_UP(PSEC_TO_NSEC(instr->delay_ns),
       meson_chip->level1_divider *
       NFC_CLK_CYCLE);
  switch (instr->type) {
  case 131:
   cmd = nfc->param.chip_select | NFC_CMD_CLE;
   cmd |= instr->ctx.cmd.opcode & 0xff;
   writel(cmd, nfc->reg_base + NFC_REG_CMD);
   meson_nfc_cmd_idle(nfc, delay_idle);
   break;

  case 132:
   for (i = 0; i < instr->ctx.addr.naddrs; i++) {
    cmd = nfc->param.chip_select | NFC_CMD_ALE;
    cmd |= instr->ctx.addr.addrs[i] & 0xff;
    writel(cmd, nfc->reg_base + NFC_REG_CMD);
   }
   meson_nfc_cmd_idle(nfc, delay_idle);
   break;

  case 130:
   buf = meson_nand_op_get_dma_safe_input_buf(instr);
   if (!buf)
    return -ENOMEM;
   meson_nfc_read_buf(nand, buf, instr->ctx.data.len);
   meson_nand_op_put_dma_safe_input_buf(instr, buf);
   break;

  case 129:
   buf = meson_nand_op_get_dma_safe_output_buf(instr);
   if (!buf)
    return -ENOMEM;
   meson_nfc_write_buf(nand, buf, instr->ctx.data.len);
   meson_nand_op_put_dma_safe_output_buf(instr, buf);
   break;

  case 128:
   meson_nfc_queue_rb(nfc, instr->ctx.waitrdy.timeout_ms);
   if (instr->delay_ns)
    meson_nfc_cmd_idle(nfc, delay_idle);
   break;
  }
 }
 meson_nfc_wait_cmd_finish(nfc, 1000);
 return 0;
}
