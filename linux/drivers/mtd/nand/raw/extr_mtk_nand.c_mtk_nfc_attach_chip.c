
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int options; int bbt_options; } ;
struct mtk_nfc_nand_chip {int bad_mark; int fdm; int spare_per_sector; } ;
struct mtk_nfc {int buffer; } ;
struct TYPE_2__ {struct device* parent; } ;
struct mtd_info {int writesize; int oobsize; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 int NAND_BUSWIDTH_16 ;
 int dev_err (struct device*,char*) ;
 int devm_kzalloc (struct device*,int,int ) ;
 int mtk_nfc_ecc_init (struct device*,struct mtd_info*) ;
 int mtk_nfc_set_bad_mark_ctl (int *,struct mtd_info*) ;
 int mtk_nfc_set_fdm (int *,struct mtd_info*) ;
 int mtk_nfc_set_spare_per_sector (int *,struct mtd_info*) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct device *dev = mtd->dev.parent;
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 int len;
 int ret;

 if (chip->options & NAND_BUSWIDTH_16) {
  dev_err(dev, "16bits buswidth not supported");
  return -EINVAL;
 }


 if (chip->bbt_options & NAND_BBT_USE_FLASH)
  chip->bbt_options |= NAND_BBT_NO_OOB;

 ret = mtk_nfc_ecc_init(dev, mtd);
 if (ret)
  return ret;

 ret = mtk_nfc_set_spare_per_sector(&mtk_nand->spare_per_sector, mtd);
 if (ret)
  return ret;

 mtk_nfc_set_fdm(&mtk_nand->fdm, mtd);
 mtk_nfc_set_bad_mark_ctl(&mtk_nand->bad_mark, mtd);

 len = mtd->writesize + mtd->oobsize;
 nfc->buffer = devm_kzalloc(dev, len, GFP_KERNEL);
 if (!nfc->buffer)
  return -ENOMEM;

 return 0;
}
