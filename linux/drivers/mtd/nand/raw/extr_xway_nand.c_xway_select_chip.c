
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xway_nand_data {int csflags; } ;
struct nand_chip {int dummy; } ;


 int BUG () ;
 int EBU_NAND_CON ;
 int NAND_CON_CE ;
 int NAND_CON_NANDM ;
 int ebu_lock ;
 int ltq_ebu_w32_mask (int ,int ,int ) ;
 struct xway_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void xway_select_chip(struct nand_chip *chip, int select)
{
 struct xway_nand_data *data = nand_get_controller_data(chip);

 switch (select) {
 case -1:
  ltq_ebu_w32_mask(NAND_CON_CE, 0, EBU_NAND_CON);
  ltq_ebu_w32_mask(NAND_CON_NANDM, 0, EBU_NAND_CON);
  spin_unlock_irqrestore(&ebu_lock, data->csflags);
  break;
 case 0:
  spin_lock_irqsave(&ebu_lock, data->csflags);
  ltq_ebu_w32_mask(0, NAND_CON_NANDM, EBU_NAND_CON);
  ltq_ebu_w32_mask(0, NAND_CON_CE, EBU_NAND_CON);
  break;
 default:
  BUG();
 }
}
