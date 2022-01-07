
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_operation {int cs; } ;
struct nand_chip {int dummy; } ;


 int nand_op_parser_exec_op (struct nand_chip*,int *,struct nand_operation const*,int) ;
 int vf610_nfc_op_parser ;
 int vf610_nfc_select_target (struct nand_chip*,int ) ;

__attribute__((used)) static int vf610_nfc_exec_op(struct nand_chip *chip,
        const struct nand_operation *op,
        bool check_only)
{
 vf610_nfc_select_target(chip, op->cs);
 return nand_op_parser_exec_op(chip, &vf610_nfc_op_parser, op,
          check_only);
}
