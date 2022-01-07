
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_operation {int cs; } ;
struct nand_chip {int controller; } ;
struct marvell_nfc {TYPE_1__* caps; } ;
struct TYPE_2__ {scalar_t__ is_nfcv2; } ;


 int marvell_nfc_select_target (struct nand_chip*,int ) ;
 int marvell_nfcv1_op_parser ;
 int marvell_nfcv2_op_parser ;
 int nand_op_parser_exec_op (struct nand_chip*,int *,struct nand_operation const*,int) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;

__attribute__((used)) static int marvell_nfc_exec_op(struct nand_chip *chip,
          const struct nand_operation *op,
          bool check_only)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);

 marvell_nfc_select_target(chip, op->cs);

 if (nfc->caps->is_nfcv2)
  return nand_op_parser_exec_op(chip, &marvell_nfcv2_op_parser,
           op, check_only);
 else
  return nand_op_parser_exec_op(chip, &marvell_nfcv1_op_parser,
           op, check_only);
}
