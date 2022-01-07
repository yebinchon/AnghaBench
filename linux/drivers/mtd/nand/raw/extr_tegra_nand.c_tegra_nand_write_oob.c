
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int tegra_nand_page_xfer (struct mtd_info*,struct nand_chip*,int *,int ,int ,int,int) ;

__attribute__((used)) static int tegra_nand_write_oob(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 return tegra_nand_page_xfer(mtd, chip, ((void*)0), chip->oob_poi,
        mtd->oobsize, page, 0);
}
