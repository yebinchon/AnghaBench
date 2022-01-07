
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nand_operation {unsigned int ninstrs; struct nand_op_instr* instrs; } ;
struct TYPE_8__ {int * out; int * in; } ;
struct TYPE_9__ {int len; TYPE_3__ buf; } ;
struct TYPE_7__ {int naddrs; int * addrs; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_10__ {TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_5__ ctx; } ;
struct nand_chip {int dummy; } ;
struct mxic_nand_ctlr {scalar_t__ regs; int complete; } ;


 scalar_t__ HC_EN ;
 int HC_EN_BIT ;





 scalar_t__ ONFI_DIN_CNT (int ) ;
 int OP_ADDR_BUSW (int ) ;
 int OP_ADDR_BYTES (int) ;
 int OP_BUSW_8 ;
 int OP_CMD_BUSW (int ) ;
 int OP_CMD_BYTES (int ) ;
 int OP_DATA_BUSW (int ) ;
 int OP_DUMMY_CYC (int) ;
 int OP_READ ;
 scalar_t__ SS_CTRL (int ) ;
 int init_completion (int *) ;
 int mxic_nfc_cs_disable (struct mxic_nand_ctlr*) ;
 int mxic_nfc_cs_enable (struct mxic_nand_ctlr*) ;
 int mxic_nfc_data_xfer (struct mxic_nand_ctlr*,int *,int *,int) ;
 int mxic_nfc_wait_ready (struct nand_chip*) ;
 struct mxic_nand_ctlr* nand_get_controller_data (struct nand_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxic_nfc_exec_op(struct nand_chip *chip,
       const struct nand_operation *op, bool check_only)
{
 struct mxic_nand_ctlr *nfc = nand_get_controller_data(chip);
 const struct nand_op_instr *instr = ((void*)0);
 int ret = 0;
 unsigned int op_id;

 mxic_nfc_cs_enable(nfc);
 init_completion(&nfc->complete);
 for (op_id = 0; op_id < op->ninstrs; op_id++) {
  instr = &op->instrs[op_id];

  switch (instr->type) {
  case 131:
   writel(0, nfc->regs + HC_EN);
   writel(HC_EN_BIT, nfc->regs + HC_EN);
   writel(OP_CMD_BUSW(OP_BUSW_8) | OP_DUMMY_CYC(0x3F) |
          OP_CMD_BYTES(0), nfc->regs + SS_CTRL(0));

   ret = mxic_nfc_data_xfer(nfc,
       &instr->ctx.cmd.opcode,
       ((void*)0), 1);
   break;

  case 132:
   writel(OP_ADDR_BUSW(OP_BUSW_8) | OP_DUMMY_CYC(0x3F) |
          OP_ADDR_BYTES(instr->ctx.addr.naddrs),
          nfc->regs + SS_CTRL(0));
   ret = mxic_nfc_data_xfer(nfc,
       instr->ctx.addr.addrs, ((void*)0),
       instr->ctx.addr.naddrs);
   break;

  case 130:
   writel(0x0, nfc->regs + ONFI_DIN_CNT(0));
   writel(OP_DATA_BUSW(OP_BUSW_8) | OP_DUMMY_CYC(0x3F) |
          OP_READ, nfc->regs + SS_CTRL(0));
   ret = mxic_nfc_data_xfer(nfc, ((void*)0),
       instr->ctx.data.buf.in,
       instr->ctx.data.len);
   break;

  case 129:
   writel(instr->ctx.data.len,
          nfc->regs + ONFI_DIN_CNT(0));
   writel(OP_DATA_BUSW(OP_BUSW_8) | OP_DUMMY_CYC(0x3F),
          nfc->regs + SS_CTRL(0));
   ret = mxic_nfc_data_xfer(nfc,
       instr->ctx.data.buf.out, ((void*)0),
       instr->ctx.data.len);
   break;

  case 128:
   ret = mxic_nfc_wait_ready(chip);
   break;
  }
 }
 mxic_nfc_cs_disable(nfc);

 return ret;
}
