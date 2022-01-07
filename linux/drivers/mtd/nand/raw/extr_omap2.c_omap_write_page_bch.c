
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* write_buf ) (struct nand_chip*,int const*,int ) ;} ;
struct TYPE_3__ {int total; int (* hwctl ) (struct nand_chip*,int ) ;int * calc_buf; } ;
struct nand_chip {int const* oob_poi; TYPE_2__ legacy; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int NAND_ECC_WRITE ;
 int mtd_ooblayout_set_eccbytes (struct mtd_info*,int *,int const*,int ,int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_calculate_ecc_bch_multi (struct mtd_info*,int const*,int *) ;
 int stub1 (struct nand_chip*,int ) ;
 int stub2 (struct nand_chip*,int const*,int ) ;
 int stub3 (struct nand_chip*,int const*,int ) ;

__attribute__((used)) static int omap_write_page_bch(struct nand_chip *chip, const uint8_t *buf,
          int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;
 uint8_t *ecc_calc = chip->ecc.calc_buf;

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);


 chip->ecc.hwctl(chip, NAND_ECC_WRITE);


 chip->legacy.write_buf(chip, buf, mtd->writesize);


 omap_calculate_ecc_bch_multi(mtd, buf, &ecc_calc[0]);

 ret = mtd_ooblayout_set_eccbytes(mtd, ecc_calc, chip->oob_poi, 0,
      chip->ecc.total);
 if (ret)
  return ret;


 chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);

 return nand_prog_page_end_op(chip);
}
