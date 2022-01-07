
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int nand_prog_page_op (struct nand_chip*,int,int ,int ,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int lpc32xx_nand_write_oob_syndrome(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 return nand_prog_page_op(chip, page, mtd->writesize, chip->oob_poi,
     mtd->oobsize);
}
