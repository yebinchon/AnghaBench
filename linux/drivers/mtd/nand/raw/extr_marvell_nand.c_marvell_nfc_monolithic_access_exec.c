
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_subop {int dummy; } ;
struct nand_chip {int controller; } ;
struct marvell_nfc_op {int rdy_delay_ns; scalar_t__ rdy_timeout_ms; int data_delay_ns; int cle_ale_delay_ns; TYPE_1__* data_instr; } ;
struct marvell_nfc {scalar_t__ regs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ NAND_OP_DATA_IN_INSTR ;
 scalar_t__ NDCR ;
 int NDCR_ND_RUN ;
 int NDSR_RDDREQ ;
 int NDSR_WRDREQ ;
 int cond_delay (int ) ;
 int marvell_nfc_end_cmd (struct nand_chip*,int,char*) ;
 int marvell_nfc_parse_instructions (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ;
 int marvell_nfc_prepare_cmd (struct nand_chip*) ;
 int marvell_nfc_send_cmd (struct nand_chip*,struct marvell_nfc_op*) ;
 int marvell_nfc_wait_cmdd (struct nand_chip*) ;
 int marvell_nfc_wait_op (struct nand_chip*,scalar_t__) ;
 int marvell_nfc_xfer_data_pio (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ;
 int readl (scalar_t__) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int marvell_nfc_monolithic_access_exec(struct nand_chip *chip,
           const struct nand_subop *subop)
{
 struct marvell_nfc_op nfc_op;
 bool reading;
 int ret;

 marvell_nfc_parse_instructions(chip, subop, &nfc_op);
 reading = (nfc_op.data_instr->type == NAND_OP_DATA_IN_INSTR);

 ret = marvell_nfc_prepare_cmd(chip);
 if (ret)
  return ret;

 marvell_nfc_send_cmd(chip, &nfc_op);
 ret = marvell_nfc_end_cmd(chip, NDSR_RDDREQ | NDSR_WRDREQ,
      "RDDREQ/WRDREQ while draining raw data");
 if (ret)
  return ret;

 cond_delay(nfc_op.cle_ale_delay_ns);

 if (reading) {
  if (nfc_op.rdy_timeout_ms) {
   ret = marvell_nfc_wait_op(chip, nfc_op.rdy_timeout_ms);
   if (ret)
    return ret;
  }

  cond_delay(nfc_op.rdy_delay_ns);
 }

 marvell_nfc_xfer_data_pio(chip, subop, &nfc_op);
 ret = marvell_nfc_wait_cmdd(chip);
 if (ret)
  return ret;

 cond_delay(nfc_op.data_delay_ns);

 if (!reading) {
  if (nfc_op.rdy_timeout_ms) {
   ret = marvell_nfc_wait_op(chip, nfc_op.rdy_timeout_ms);
   if (ret)
    return ret;
  }

  cond_delay(nfc_op.rdy_delay_ns);
 }






 if (!reading) {
  struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);

  writel_relaxed(readl(nfc->regs + NDCR) & ~NDCR_ND_RUN,
          nfc->regs + NDCR);
 }

 return 0;
}
