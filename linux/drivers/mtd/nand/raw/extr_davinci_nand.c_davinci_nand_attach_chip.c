
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct davinci_nand_pdata {int ecc_bits; } ;
struct TYPE_4__ {int mode; int bytes; int size; int strength; void* algo; int hwctl; int correct; int calculate; int options; } ;
struct TYPE_5__ {TYPE_1__ ecc; } ;
struct davinci_nand_info {TYPE_2__ chip; TYPE_3__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 scalar_t__ IS_ERR (struct davinci_nand_pdata*) ;
 void* NAND_ECC_BCH ;
 int NAND_ECC_GENERIC_ERASED_CHECK ;
 void* NAND_ECC_HAMMING ;

 int NAND_ECC_HW_OOB_FIRST ;


 int PTR_ERR (struct davinci_nand_pdata*) ;
 int davinci_nand_lock ;
 int dev_dbg (int *,char*) ;
 int ecc4_busy ;
 int hwecc4_small_ooblayout_ops ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_davinci_calculate_1bit ;
 int nand_davinci_calculate_4bit ;
 int nand_davinci_correct_1bit ;
 int nand_davinci_correct_4bit ;
 struct davinci_nand_pdata* nand_davinci_get_pdata (TYPE_3__*) ;
 int nand_davinci_hwctl_1bit ;
 int nand_davinci_hwctl_4bit ;
 int nand_ooblayout_lp_ops ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct davinci_nand_info* to_davinci_nand (struct mtd_info*) ;

__attribute__((used)) static int davinci_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct davinci_nand_info *info = to_davinci_nand(mtd);
 struct davinci_nand_pdata *pdata = nand_davinci_get_pdata(info->pdev);
 int ret = 0;

 if (IS_ERR(pdata))
  return PTR_ERR(pdata);

 switch (info->chip.ecc.mode) {
 case 129:
  pdata->ecc_bits = 0;
  break;
 case 128:
  pdata->ecc_bits = 0;






  info->chip.ecc.algo = NAND_ECC_HAMMING;
  break;
 case 130:
  if (pdata->ecc_bits == 4) {






   spin_lock_irq(&davinci_nand_lock);
   if (ecc4_busy)
    ret = -EBUSY;
   else
    ecc4_busy = 1;
   spin_unlock_irq(&davinci_nand_lock);

   if (ret == -EBUSY)
    return ret;

   info->chip.ecc.calculate = nand_davinci_calculate_4bit;
   info->chip.ecc.correct = nand_davinci_correct_4bit;
   info->chip.ecc.hwctl = nand_davinci_hwctl_4bit;
   info->chip.ecc.bytes = 10;
   info->chip.ecc.options = NAND_ECC_GENERIC_ERASED_CHECK;
   info->chip.ecc.algo = NAND_ECC_BCH;
  } else {

   info->chip.ecc.calculate = nand_davinci_calculate_1bit;
   info->chip.ecc.correct = nand_davinci_correct_1bit;
   info->chip.ecc.hwctl = nand_davinci_hwctl_1bit;
   info->chip.ecc.bytes = 3;
   info->chip.ecc.algo = NAND_ECC_HAMMING;
  }
  info->chip.ecc.size = 512;
  info->chip.ecc.strength = pdata->ecc_bits;
  break;
 default:
  return -EINVAL;
 }







 if (pdata->ecc_bits == 4) {
  int chunks = mtd->writesize / 512;

  if (!chunks || mtd->oobsize < 16) {
   dev_dbg(&info->pdev->dev, "too small\n");
   return -EINVAL;
  }





  if (chunks == 1) {
   mtd_set_ooblayout(mtd, &hwecc4_small_ooblayout_ops);
  } else if (chunks == 4 || chunks == 8) {
   mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
   info->chip.ecc.mode = NAND_ECC_HW_OOB_FIRST;
  } else {
   return -EIO;
  }
 }

 return ret;
}
