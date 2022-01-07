
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; int prepad; int postpad; } ;
struct nand_chip {int const* oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_data_op (struct nand_chip*,int const*,int,int) ;

__attribute__((used)) static int nand_write_page_raw_syndrome(struct nand_chip *chip,
     const uint8_t *buf, int oob_required,
     int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 uint8_t *oob = chip->oob_poi;
 int steps, size, ret;

 ret = nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 if (ret)
  return ret;

 for (steps = chip->ecc.steps; steps > 0; steps--) {
  ret = nand_write_data_op(chip, buf, eccsize, 0);
  if (ret)
   return ret;

  buf += eccsize;

  if (chip->ecc.prepad) {
   ret = nand_write_data_op(chip, oob, chip->ecc.prepad,
       0);
   if (ret)
    return ret;

   oob += chip->ecc.prepad;
  }

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

 size = mtd->oobsize - (oob - chip->oob_poi);
 if (size) {
  ret = nand_write_data_op(chip, oob, size, 0);
  if (ret)
   return ret;
 }

 return nand_prog_page_end_op(chip);
}
