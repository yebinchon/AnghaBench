
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int dev; int irq_waitq; } ;


 int NFC_CONFIG1 ;
 int NFC_CONFIG2 ;
 int NFC_INT ;
 int NFC_INT_MASK ;
 int NFC_TIMEOUT ;
 int dev_warn (int ,char*) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mpc5121_nfc_prv* nand_get_controller_data (struct nand_chip*) ;
 int nfc_clear (struct mtd_info*,int ,int) ;
 int nfc_read (struct mtd_info*,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void mpc5121_nfc_done(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mpc5121_nfc_prv *prv = nand_get_controller_data(chip);
 int rv;

 if ((nfc_read(mtd, NFC_CONFIG2) & NFC_INT) == 0) {
  nfc_clear(mtd, NFC_CONFIG1, NFC_INT_MASK);
  rv = wait_event_timeout(prv->irq_waitq,
   (nfc_read(mtd, NFC_CONFIG2) & NFC_INT), NFC_TIMEOUT);

  if (!rv)
   dev_warn(prv->dev,
    "Timeout while waiting for interrupt.\n");
 }

 nfc_clear(mtd, NFC_CONFIG2, NFC_INT);
}
