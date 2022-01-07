
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; int prepad; int postpad; int (* calculate ) (struct nand_chip*,int const*,int const*) ;int (* hwctl ) (struct nand_chip*,int ) ;} ;
struct nand_chip {int const* oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int NAND_ECC_WRITE ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_data_op (struct nand_chip*,int const*,int,int) ;
 int stub1 (struct nand_chip*,int ) ;
 int stub2 (struct nand_chip*,int const*,int const*) ;

__attribute__((used)) static int nand_write_page_syndrome(struct nand_chip *chip, const uint8_t *buf,
        int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 const uint8_t *p = buf;
 uint8_t *oob = chip->oob_poi;
 int ret;

 ret = nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 if (ret)
  return ret;

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
  chip->ecc.hwctl(chip, NAND_ECC_WRITE);

  ret = nand_write_data_op(chip, p, eccsize, 0);
  if (ret)
   return ret;

  if (chip->ecc.prepad) {
   ret = nand_write_data_op(chip, oob, chip->ecc.prepad,
       0);
   if (ret)
    return ret;

   oob += chip->ecc.prepad;
  }

  chip->ecc.calculate(chip, p, oob);

  ret = nand_write_data_op(chip, oob, eccbytes, 0);
  if (ret)
   return ret;

  oob += eccbytes;

  if (chip->ecc.postpad) {
   ret = nand_write_data_op(chip, oob, chip->ecc.postpad,
       0);
   if (ret)
    return ret;

   oob += chip->ecc.postpad;
  }
 }


 i = mtd->oobsize - (oob - chip->oob_poi);
 if (i) {
  ret = nand_write_data_op(chip, oob, i, 0);
  if (ret)
   return ret;
 }

 return nand_prog_page_end_op(chip);
}
