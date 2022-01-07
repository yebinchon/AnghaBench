
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int mode; } ;
struct nand_chip {TYPE_2__ ecc; } ;
struct mtd_info {int writesize; } ;
struct lpc32xx_nand_host {int mlcsubpages; void* dummy_buf; void* dma_buf; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_ECC_HW ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int lpc32xx_ooblayout_ops ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int lpc32xx_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 struct device *dev = &host->pdev->dev;

 host->dma_buf = devm_kzalloc(dev, mtd->writesize, GFP_KERNEL);
 if (!host->dma_buf)
  return -ENOMEM;

 host->dummy_buf = devm_kzalloc(dev, mtd->writesize, GFP_KERNEL);
 if (!host->dummy_buf)
  return -ENOMEM;

 chip->ecc.mode = NAND_ECC_HW;
 chip->ecc.size = 512;
 mtd_set_ooblayout(mtd, &lpc32xx_ooblayout_ops);
 host->mlcsubpages = mtd->writesize / 512;

 return 0;
}
