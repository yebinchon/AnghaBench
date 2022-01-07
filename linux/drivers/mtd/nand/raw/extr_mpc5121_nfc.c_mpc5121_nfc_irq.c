
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int irq_waitq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NFC_CONFIG1 ;
 int NFC_INT_MASK ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mpc5121_nfc_prv* nand_get_controller_data (struct nand_chip*) ;
 int nfc_set (struct mtd_info*,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t mpc5121_nfc_irq(int irq, void *data)
{
 struct mtd_info *mtd = data;
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mpc5121_nfc_prv *prv = nand_get_controller_data(chip);

 nfc_set(mtd, NFC_CONFIG1, NFC_INT_MASK);
 wake_up(&prv->irq_waitq);

 return IRQ_HANDLED;
}
