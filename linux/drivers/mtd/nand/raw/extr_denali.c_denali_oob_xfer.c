
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int steps; int size; int bytes; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct denali_controller {int oob_skip_bytes; } ;


 int denali_change_column (struct nand_chip*,int,void*,int,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_oob_xfer(struct nand_chip *chip, void *buf, bool write)
{
 struct denali_controller *denali = to_denali_controller(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int writesize = mtd->writesize;
 int oobsize = mtd->oobsize;
 int oob_skip = denali->oob_skip_bytes;
 int ret, i, pos, len;


 ret = denali_change_column(chip, writesize, buf, oob_skip, write);
 if (ret)
  return ret;

 buf += oob_skip;

 for (i = 0; i < ecc->steps; i++) {
  pos = ecc->size + i * (ecc->size + ecc->bytes);

  if (i == ecc->steps - 1)

   len = writesize + oobsize - pos - oob_skip;
  else
   len = ecc->bytes;

  if (pos >= writesize) {
   pos += oob_skip;
  } else if (pos + len > writesize) {

   ret = denali_change_column(chip, pos, buf,
         writesize - pos, write);
   if (ret)
    return ret;

   buf += writesize - pos;
   len -= writesize - pos;
   pos = writesize + oob_skip;
  }

  ret = denali_change_column(chip, pos, buf, len, write);
  if (ret)
   return ret;

  buf += len;
 }

 return 0;
}
