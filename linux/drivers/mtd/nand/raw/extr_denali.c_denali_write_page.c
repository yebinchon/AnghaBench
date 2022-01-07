
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; } ;


 int denali_page_xfer (struct nand_chip*,void*,int ,int,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int denali_write_page(struct nand_chip *chip, const u8 *buf,
        int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 return denali_page_xfer(chip, (void *)buf, mtd->writesize, page, 1);
}
