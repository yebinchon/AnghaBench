
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int (* write_buf ) (struct nand_chip*,int *,int ) ;} ;
struct TYPE_3__ {int steps; } ;
struct nand_chip {int * oob_poi; TYPE_2__ legacy; TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; } ;
struct mtd_info {int oobsize; } ;
struct lpc32xx_nand_host {scalar_t__ ecc_buf; } ;


 int lpc32xx_slc_ecc_copy (int *,int *,int ) ;
 int lpc32xx_xfer (struct mtd_info*,int *,int ,int ) ;
 int mtd_ooblayout_ecc (struct mtd_info*,int ,struct mtd_oob_region*) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int *,int ) ;

__attribute__((used)) static int lpc32xx_nand_write_page_syndrome(struct nand_chip *chip,
         const uint8_t *buf,
         int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 struct mtd_oob_region oobregion = { };
 uint8_t *pb;
 int error;

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);


 error = lpc32xx_xfer(mtd, (uint8_t *)buf, chip->ecc.steps, 0);
 if (error)
  return error;





 error = mtd_ooblayout_ecc(mtd, 0, &oobregion);
 if (error)
  return error;

 pb = chip->oob_poi + oobregion.offset;
 lpc32xx_slc_ecc_copy(pb, (uint32_t *)host->ecc_buf, chip->ecc.steps);


 chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);

 return nand_prog_page_end_op(chip);
}
