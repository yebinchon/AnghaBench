
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_subop {int dummy; } ;
struct nand_chip {int dummy; } ;
struct marvell_nfc_op {int rdy_delay_ns; int rdy_timeout_ms; int cle_ale_delay_ns; int * ndcb; } ;


 int NDCB0_CMD_TYPE (int ) ;
 int TYPE_ERASE ;
 int cond_delay (int ) ;
 int marvell_nfc_parse_instructions (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ;
 int marvell_nfc_prepare_cmd (struct nand_chip*) ;
 int marvell_nfc_send_cmd (struct nand_chip*,struct marvell_nfc_op*) ;
 int marvell_nfc_wait_cmdd (struct nand_chip*) ;
 int marvell_nfc_wait_op (struct nand_chip*,int ) ;

__attribute__((used)) static int marvell_nfc_erase_cmd_type_exec(struct nand_chip *chip,
        const struct nand_subop *subop)
{
 struct marvell_nfc_op nfc_op;
 int ret;

 marvell_nfc_parse_instructions(chip, subop, &nfc_op);
 nfc_op.ndcb[0] |= NDCB0_CMD_TYPE(TYPE_ERASE);

 ret = marvell_nfc_prepare_cmd(chip);
 if (ret)
  return ret;

 marvell_nfc_send_cmd(chip, &nfc_op);
 ret = marvell_nfc_wait_cmdd(chip);
 if (ret)
  return ret;

 cond_delay(nfc_op.cle_ale_delay_ns);

 ret = marvell_nfc_wait_op(chip, nfc_op.rdy_timeout_ms);
 if (ret)
  return ret;

 cond_delay(nfc_op.rdy_delay_ns);

 return 0;
}
