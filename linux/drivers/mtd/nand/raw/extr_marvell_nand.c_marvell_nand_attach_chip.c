
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pxa3xx_nand_platform_data {int ecc_strength; int ecc_step_size; scalar_t__ flash_bbt; } ;
struct TYPE_6__ {scalar_t__ mode; int strength; int size; } ;
struct nand_chip {int bbt_options; int options; TYPE_3__ ecc; int * bbt_md; int * bbt_td; int controller; } ;
struct mtd_info {int writesize; char* name; } ;
struct marvell_nfc {int dev; TYPE_1__* caps; } ;
struct marvell_nand_chip {int ndcr; int addr_cyc; TYPE_2__* sels; } ;
struct TYPE_5__ {int cs; } ;
struct TYPE_4__ {scalar_t__ legacy_of_bindings; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBT_NO_OOB_BBM ;
 int NAND_BBT_USE_FLASH ;
 int NAND_BUSWIDTH_16 ;
 scalar_t__ NAND_ECC_HW ;
 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_ROW_ADDR_3 ;
 int NDCR_DWIDTH_C ;
 int NDCR_DWIDTH_M ;
 int NDCR_PAGE_SZ (int) ;
 int NDCR_RA_START ;
 int bbt_main_descr ;
 int bbt_mirror_descr ;
 int dev_err (int ,char*,...) ;
 struct pxa3xx_nand_platform_data* dev_get_platdata (int ) ;
 int dev_name (int ) ;
 char* devm_kasprintf (int ,int ,char*,int ,int ) ;
 int marvell_nand_ecc_init (struct mtd_info*,TYPE_3__*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct marvell_nand_chip* to_marvell_nand (struct nand_chip*) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;

__attribute__((used)) static int marvell_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct marvell_nand_chip *marvell_nand = to_marvell_nand(chip);
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 struct pxa3xx_nand_platform_data *pdata = dev_get_platdata(nfc->dev);
 int ret;

 if (pdata && pdata->flash_bbt)
  chip->bbt_options |= NAND_BBT_USE_FLASH;

 if (chip->bbt_options & NAND_BBT_USE_FLASH) {




  chip->bbt_options |= NAND_BBT_NO_OOB_BBM;
  chip->bbt_td = &bbt_main_descr;
  chip->bbt_md = &bbt_mirror_descr;
 }


 marvell_nand->ndcr = NDCR_PAGE_SZ(mtd->writesize);
 if (chip->options & NAND_BUSWIDTH_16)
  marvell_nand->ndcr |= NDCR_DWIDTH_M | NDCR_DWIDTH_C;





 if (mtd->writesize <= 512) {
  marvell_nand->addr_cyc = 1;
 } else {
  marvell_nand->addr_cyc = 2;
  marvell_nand->ndcr |= NDCR_RA_START;
 }
 if (chip->options & NAND_ROW_ADDR_3)
  marvell_nand->addr_cyc += 3;
 else
  marvell_nand->addr_cyc += 2;

 if (pdata) {
  chip->ecc.size = pdata->ecc_step_size;
  chip->ecc.strength = pdata->ecc_strength;
 }

 ret = marvell_nand_ecc_init(mtd, &chip->ecc);
 if (ret) {
  dev_err(nfc->dev, "ECC init failed: %d\n", ret);
  return ret;
 }

 if (chip->ecc.mode == NAND_ECC_HW) {






  chip->options |= NAND_NO_SUBPAGE_WRITE;
 }

 if (pdata || nfc->caps->legacy_of_bindings) {





  mtd->name = "pxa3xx_nand-0";
 } else if (!mtd->name) {
  mtd->name = devm_kasprintf(nfc->dev, GFP_KERNEL,
        "%s:nand.%d", dev_name(nfc->dev),
        marvell_nand->sels[0].cs);
  if (!mtd->name) {
   dev_err(nfc->dev, "Failed to allocate mtd->name\n");
   return -ENOMEM;
  }
 }

 return 0;
}
