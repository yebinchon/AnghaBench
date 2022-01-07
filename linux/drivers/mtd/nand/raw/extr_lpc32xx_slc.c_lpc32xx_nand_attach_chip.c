
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int size; scalar_t__ postpad; scalar_t__ prepad; int bytes; } ;
struct nand_chip {int bbt_options; int * bbt_md; int * bbt_td; TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;
struct lpc32xx_nand_host {scalar_t__ data_buf; int * ecc_buf; } ;


 scalar_t__ LPC32XX_DMA_DATA_SIZE ;
 int LPC32XX_SLC_DEV_ECC_BYTES ;
 int NAND_BBT_USE_FLASH ;
 int bbt_smallpage_main_descr ;
 int bbt_smallpage_mirror_descr ;
 int lpc32xx_ooblayout_ops ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int lpc32xx_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);


 host->ecc_buf = (uint32_t *)(host->data_buf + LPC32XX_DMA_DATA_SIZE);






 if (mtd->writesize <= 512)
  mtd_set_ooblayout(mtd, &lpc32xx_ooblayout_ops);


 chip->ecc.size = 256;
 chip->ecc.bytes = LPC32XX_SLC_DEV_ECC_BYTES;
 chip->ecc.prepad = 0;
 chip->ecc.postpad = 0;






 if ((chip->bbt_options & NAND_BBT_USE_FLASH) &&
     mtd->writesize <= 512) {
  chip->bbt_td = &bbt_smallpage_main_descr;
  chip->bbt_md = &bbt_smallpage_mirror_descr;
 }

 return 0;
}
