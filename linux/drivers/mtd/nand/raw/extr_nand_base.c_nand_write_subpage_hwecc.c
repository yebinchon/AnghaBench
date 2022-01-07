
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int size; int bytes; int steps; int total; int const* calc_buf; int (* calculate ) (struct nand_chip*,int const*,int const*) ;int (* hwctl ) (struct nand_chip*,int ) ;} ;
struct nand_chip {int const* oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int NAND_ECC_WRITE ;
 int memset (int const*,int,int) ;
 int mtd_ooblayout_set_eccbytes (struct mtd_info*,int const*,int const*,int ,int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_data_op (struct nand_chip*,int const*,int,int) ;
 int stub1 (struct nand_chip*,int ) ;
 int stub2 (struct nand_chip*,int const*,int const*) ;

__attribute__((used)) static int nand_write_subpage_hwecc(struct nand_chip *chip, uint32_t offset,
        uint32_t data_len, const uint8_t *buf,
        int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 uint8_t *oob_buf = chip->oob_poi;
 uint8_t *ecc_calc = chip->ecc.calc_buf;
 int ecc_size = chip->ecc.size;
 int ecc_bytes = chip->ecc.bytes;
 int ecc_steps = chip->ecc.steps;
 uint32_t start_step = offset / ecc_size;
 uint32_t end_step = (offset + data_len - 1) / ecc_size;
 int oob_bytes = mtd->oobsize / ecc_steps;
 int step, ret;

 ret = nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 if (ret)
  return ret;

 for (step = 0; step < ecc_steps; step++) {

  chip->ecc.hwctl(chip, NAND_ECC_WRITE);


  ret = nand_write_data_op(chip, buf, ecc_size, 0);
  if (ret)
   return ret;


  if ((step < start_step) || (step > end_step))
   memset(ecc_calc, 0xff, ecc_bytes);
  else
   chip->ecc.calculate(chip, buf, ecc_calc);



  if (!oob_required || (step < start_step) || (step > end_step))
   memset(oob_buf, 0xff, oob_bytes);

  buf += ecc_size;
  ecc_calc += ecc_bytes;
  oob_buf += oob_bytes;
 }



 ecc_calc = chip->ecc.calc_buf;
 ret = mtd_ooblayout_set_eccbytes(mtd, ecc_calc, chip->oob_poi, 0,
      chip->ecc.total);
 if (ret)
  return ret;


 ret = nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, 0);
 if (ret)
  return ret;

 return nand_prog_page_end_op(chip);
}
