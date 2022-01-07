
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; int total; int (* calculate ) (struct nand_chip*,int const*,int *) ;int (* hwctl ) (struct nand_chip*,int ) ;int * calc_buf; } ;
struct nand_chip {int const* oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int NAND_ECC_WRITE ;
 int mtd_ooblayout_set_eccbytes (struct mtd_info*,int *,int const*,int ,int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_data_op (struct nand_chip*,int const*,int,int) ;
 int stub1 (struct nand_chip*,int ) ;
 int stub2 (struct nand_chip*,int const*,int *) ;

__attribute__((used)) static int nand_write_page_hwecc(struct nand_chip *chip, const uint8_t *buf,
     int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int i, eccsize = chip->ecc.size, ret;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 uint8_t *ecc_calc = chip->ecc.calc_buf;
 const uint8_t *p = buf;

 ret = nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 if (ret)
  return ret;

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
  chip->ecc.hwctl(chip, NAND_ECC_WRITE);

  ret = nand_write_data_op(chip, p, eccsize, 0);
  if (ret)
   return ret;

  chip->ecc.calculate(chip, p, &ecc_calc[i]);
 }

 ret = mtd_ooblayout_set_eccbytes(mtd, ecc_calc, chip->oob_poi, 0,
      chip->ecc.total);
 if (ret)
  return ret;

 ret = nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, 0);
 if (ret)
  return ret;

 return nand_prog_page_end_op(chip);
}
