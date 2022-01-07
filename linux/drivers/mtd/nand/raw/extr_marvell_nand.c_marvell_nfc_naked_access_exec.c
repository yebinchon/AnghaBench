
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_subop {TYPE_1__* instrs; } ;
struct nand_chip {int controller; } ;
struct marvell_nfc_op {int* ndcb; int cle_ale_delay_ns; int data_instr; } ;
struct marvell_nfc {scalar_t__ regs; } ;
struct TYPE_2__ {int type; } ;






 int NDCB0_CMD_TYPE (int ) ;
 int NDCB0_CMD_XTYPE (int ) ;
 scalar_t__ NDCR ;
 int NDCR_ND_RUN ;
 int NDSR_RDDREQ ;
 int NDSR_WRDREQ ;
 int TYPE_MASK ;
 int TYPE_NAKED_ADDR ;
 int TYPE_NAKED_CMD ;
 int TYPE_READ ;
 int TYPE_WRITE ;
 int XTYPE_LAST_NAKED_RW ;
 int XTYPE_MASK ;
 int cond_delay (int ) ;
 int marvell_nfc_end_cmd (struct nand_chip*,int,char*) ;
 int marvell_nfc_parse_instructions (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ;
 int marvell_nfc_prepare_cmd (struct nand_chip*) ;
 int marvell_nfc_send_cmd (struct nand_chip*,struct marvell_nfc_op*) ;
 int marvell_nfc_wait_cmdd (struct nand_chip*) ;
 int marvell_nfc_xfer_data_pio (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ;
 int readl (scalar_t__) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int marvell_nfc_naked_access_exec(struct nand_chip *chip,
      const struct nand_subop *subop)
{
 struct marvell_nfc_op nfc_op;
 int ret;

 marvell_nfc_parse_instructions(chip, subop, &nfc_op);






 nfc_op.ndcb[0] &= ~(NDCB0_CMD_TYPE(TYPE_MASK) |
       NDCB0_CMD_XTYPE(XTYPE_MASK));
 switch (subop->instrs[0].type) {
 case 130:
  nfc_op.ndcb[0] |= NDCB0_CMD_TYPE(TYPE_NAKED_CMD);
  break;
 case 131:
  nfc_op.ndcb[0] |= NDCB0_CMD_TYPE(TYPE_NAKED_ADDR);
  break;
 case 129:
  nfc_op.ndcb[0] |= NDCB0_CMD_TYPE(TYPE_READ) |
      NDCB0_CMD_XTYPE(XTYPE_LAST_NAKED_RW);
  break;
 case 128:
  nfc_op.ndcb[0] |= NDCB0_CMD_TYPE(TYPE_WRITE) |
      NDCB0_CMD_XTYPE(XTYPE_LAST_NAKED_RW);
  break;
 default:

  break;
 }

 ret = marvell_nfc_prepare_cmd(chip);
 if (ret)
  return ret;

 marvell_nfc_send_cmd(chip, &nfc_op);

 if (!nfc_op.data_instr) {
  ret = marvell_nfc_wait_cmdd(chip);
  cond_delay(nfc_op.cle_ale_delay_ns);
  return ret;
 }

 ret = marvell_nfc_end_cmd(chip, NDSR_RDDREQ | NDSR_WRDREQ,
      "RDDREQ/WRDREQ while draining raw data");
 if (ret)
  return ret;

 marvell_nfc_xfer_data_pio(chip, subop, &nfc_op);
 ret = marvell_nfc_wait_cmdd(chip);
 if (ret)
  return ret;






 if (subop->instrs[0].type == 128) {
  struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);

  writel_relaxed(readl(nfc->regs + NDCR) & ~NDCR_ND_RUN,
          nfc->regs + NDCR);
 }

 return 0;
}
