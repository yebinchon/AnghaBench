
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int * oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int NAND_ECC_READ ;
 int atmel_nand_pmecc_correct_data (struct nand_chip*,int *,int) ;
 int atmel_nand_pmecc_disable (struct nand_chip*,int) ;
 int atmel_nand_pmecc_enable (struct nand_chip*,int ,int) ;
 int atmel_nand_read_buf (struct nand_chip*,int *,int ) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int atmel_nand_pmecc_read_pg(struct nand_chip *chip, u8 *buf,
        bool oob_required, int page, bool raw)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 nand_read_page_op(chip, page, 0, ((void*)0), 0);

 ret = atmel_nand_pmecc_enable(chip, NAND_ECC_READ, raw);
 if (ret)
  return ret;

 atmel_nand_read_buf(chip, buf, mtd->writesize);
 atmel_nand_read_buf(chip, chip->oob_poi, mtd->oobsize);

 ret = atmel_nand_pmecc_correct_data(chip, buf, raw);

 atmel_nand_pmecc_disable(chip, raw);

 return ret;
}
