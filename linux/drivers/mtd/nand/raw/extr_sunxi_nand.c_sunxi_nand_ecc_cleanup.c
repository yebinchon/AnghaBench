
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int mode; } ;




 int sunxi_nand_hw_ecc_ctrl_cleanup (struct nand_ecc_ctrl*) ;

__attribute__((used)) static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
{
 switch (ecc->mode) {
 case 129:
  sunxi_nand_hw_ecc_ctrl_cleanup(ecc);
  break;
 case 128:
 default:
  break;
 }
}
