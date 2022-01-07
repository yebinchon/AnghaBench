
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_nand_chip {TYPE_1__* sels; } ;
struct nand_operation {size_t cs; } ;
struct nand_op_parser {int dummy; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ rb; } ;


 int nand_op_parser_exec_op (struct nand_chip*,struct nand_op_parser const*,struct nand_operation const*,int) ;
 struct nand_op_parser sunxi_nfc_norb_op_parser ;
 struct nand_op_parser sunxi_nfc_op_parser ;
 int sunxi_nfc_select_chip (struct nand_chip*,size_t) ;
 struct sunxi_nand_chip* to_sunxi_nand (struct nand_chip*) ;

__attribute__((used)) static int sunxi_nfc_exec_op(struct nand_chip *nand,
        const struct nand_operation *op, bool check_only)
{
 struct sunxi_nand_chip *sunxi_nand = to_sunxi_nand(nand);
 const struct nand_op_parser *parser;

 sunxi_nfc_select_chip(nand, op->cs);

 if (sunxi_nand->sels[op->cs].rb >= 0)
  parser = &sunxi_nfc_op_parser;
 else
  parser = &sunxi_nfc_norb_op_parser;

 return nand_op_parser_exec_op(nand, parser, op, check_only);
}
