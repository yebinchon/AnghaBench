
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int const* oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct atmel_nand {int pmecc; } ;


 int NAND_ECC_WRITE ;
 int atmel_nand_pmecc_disable (struct nand_chip*,int) ;
 int atmel_nand_pmecc_enable (struct nand_chip*,int ,int) ;
 int atmel_nand_pmecc_generate_eccbytes (struct nand_chip*,int) ;
 int atmel_nand_write_buf (struct nand_chip*,int const*,int ) ;
 int atmel_pmecc_disable (int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;

__attribute__((used)) static int atmel_nand_pmecc_write_pg(struct nand_chip *chip, const u8 *buf,
         bool oob_required, int page, bool raw)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_nand *nand = to_atmel_nand(chip);
 int ret;

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);

 ret = atmel_nand_pmecc_enable(chip, NAND_ECC_WRITE, raw);
 if (ret)
  return ret;

 atmel_nand_write_buf(chip, buf, mtd->writesize);

 ret = atmel_nand_pmecc_generate_eccbytes(chip, raw);
 if (ret) {
  atmel_pmecc_disable(nand->pmecc);
  return ret;
 }

 atmel_nand_pmecc_disable(chip, raw);

 atmel_nand_write_buf(chip, chip->oob_poi, mtd->oobsize);

 return nand_prog_page_end_op(chip);
}
