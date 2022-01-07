
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_subop {int dummy; } ;
struct nand_chip {int dummy; } ;
struct marvell_nfc_op {int rdy_delay_ns; int rdy_timeout_ms; } ;


 int cond_delay (int ) ;
 int marvell_nfc_parse_instructions (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ;
 int marvell_nfc_wait_op (struct nand_chip*,int ) ;

__attribute__((used)) static int marvell_nfc_naked_waitrdy_exec(struct nand_chip *chip,
       const struct nand_subop *subop)
{
 struct marvell_nfc_op nfc_op;
 int ret;

 marvell_nfc_parse_instructions(chip, subop, &nfc_op);

 ret = marvell_nfc_wait_op(chip, nfc_op.rdy_timeout_ms);
 cond_delay(nfc_op.rdy_delay_ns);

 return ret;
}
