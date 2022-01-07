
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; } ;
struct TYPE_4__ {int size; int bytes; int strength; int read_oob; int read_page; int write_oob; int write_page; int mode; } ;
struct TYPE_5__ {TYPE_1__ ecc; int * bbt_md; int * bbt_td; } ;
struct cafe_priv {int dmaaddr; int dmabuf; TYPE_3__* pdev; TYPE_2__ nand; int ctl2; int usedma; } ;
struct TYPE_6__ {int dev; } ;


 int BIT (int) ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int NAND_DMA_ADDR0 ;
 int NAND_DMA_ADDR1 ;
 int NAND_ECC_HW_SYNDROME ;
 int cafe_bbt_main_descr_2048 ;
 int cafe_bbt_main_descr_512 ;
 int cafe_bbt_mirror_descr_2048 ;
 int cafe_bbt_mirror_descr_512 ;
 int cafe_dev_dbg (int *,char*,int ,int ) ;
 int cafe_nand_read_oob ;
 int cafe_nand_read_page ;
 int cafe_nand_write_oob ;
 int cafe_nand_write_page_lowlevel ;
 int cafe_ooblayout_ops ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_writel (struct cafe_priv*,int ,int ) ;
 int dev_warn (int *,char*,int) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int lower_32_bits (int ) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct cafe_priv* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int upper_32_bits (int ) ;
 int usedma ;

__attribute__((used)) static int cafe_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct cafe_priv *cafe = nand_get_controller_data(chip);
 int err = 0;

 cafe->dmabuf = dma_alloc_coherent(&cafe->pdev->dev, 2112,
       &cafe->dmaaddr, GFP_KERNEL);
 if (!cafe->dmabuf)
  return -ENOMEM;


 cafe_writel(cafe, lower_32_bits(cafe->dmaaddr), NAND_DMA_ADDR0);
 cafe_writel(cafe, upper_32_bits(cafe->dmaaddr), NAND_DMA_ADDR1);

 cafe_dev_dbg(&cafe->pdev->dev, "Set DMA address to %x (virt %p)\n",
       cafe_readl(cafe, NAND_DMA_ADDR0), cafe->dmabuf);


 cafe->usedma = usedma;

 cafe->ctl2 = BIT(27);
 if (mtd->writesize == 2048)
  cafe->ctl2 |= BIT(29);


 mtd_set_ooblayout(mtd, &cafe_ooblayout_ops);
 if (mtd->writesize == 2048) {
  cafe->nand.bbt_td = &cafe_bbt_main_descr_2048;
  cafe->nand.bbt_md = &cafe_bbt_mirror_descr_2048;
 } else if (mtd->writesize == 512) {
  cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
  cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
 } else {
  dev_warn(&cafe->pdev->dev,
    "Unexpected NAND flash writesize %d. Aborting\n",
    mtd->writesize);
  err = -ENOTSUPP;
  goto out_free_dma;
 }

 cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
 cafe->nand.ecc.size = mtd->writesize;
 cafe->nand.ecc.bytes = 14;
 cafe->nand.ecc.strength = 4;
 cafe->nand.ecc.write_page = cafe_nand_write_page_lowlevel;
 cafe->nand.ecc.write_oob = cafe_nand_write_oob;
 cafe->nand.ecc.read_page = cafe_nand_read_page;
 cafe->nand.ecc.read_oob = cafe_nand_read_oob;

 return 0;

 out_free_dma:
 dma_free_coherent(&cafe->pdev->dev, 2112, cafe->dmabuf, cafe->dmaaddr);

 return err;
}
