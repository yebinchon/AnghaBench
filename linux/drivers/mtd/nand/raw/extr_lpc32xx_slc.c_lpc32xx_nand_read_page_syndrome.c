
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int steps; int (* correct ) (struct nand_chip*,int *,int *,int *) ;int bytes; int size; } ;
struct TYPE_4__ {int (* read_buf ) (struct nand_chip*,int *,int ) ;} ;
struct nand_chip {TYPE_3__ ecc; int * oob_poi; TYPE_1__ legacy; } ;
struct mtd_oob_region {int offset; } ;
struct TYPE_5__ {int corrected; int failed; } ;
struct mtd_info {TYPE_2__ ecc_stats; int oobsize; } ;
struct lpc32xx_nand_host {scalar_t__ ecc_buf; } ;


 int LPC32XX_ECC_SAVE_SIZE ;
 int lpc32xx_slc_ecc_copy (int *,int *,int) ;
 int lpc32xx_xfer (struct mtd_info*,int *,int,int) ;
 int mtd_ooblayout_ecc (struct mtd_info*,int ,struct mtd_oob_region*) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int *,int ) ;
 int stub2 (struct nand_chip*,int *,int *,int *) ;

__attribute__((used)) static int lpc32xx_nand_read_page_syndrome(struct nand_chip *chip, uint8_t *buf,
        int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 struct mtd_oob_region oobregion = { };
 int stat, i, status, error;
 uint8_t *oobecc, tmpecc[LPC32XX_ECC_SAVE_SIZE];


 nand_read_page_op(chip, page, 0, ((void*)0), 0);


 status = lpc32xx_xfer(mtd, buf, chip->ecc.steps, 1);


 chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);


 lpc32xx_slc_ecc_copy(tmpecc, (uint32_t *) host->ecc_buf, chip->ecc.steps);


 error = mtd_ooblayout_ecc(mtd, 0, &oobregion);
 if (error)
  return error;

 oobecc = chip->oob_poi + oobregion.offset;

 for (i = 0; i < chip->ecc.steps; i++) {
  stat = chip->ecc.correct(chip, buf, oobecc,
      &tmpecc[i * chip->ecc.bytes]);
  if (stat < 0)
   mtd->ecc_stats.failed++;
  else
   mtd->ecc_stats.corrected += stat;

  buf += chip->ecc.size;
  oobecc += chip->ecc.bytes;
 }

 return status;
}
