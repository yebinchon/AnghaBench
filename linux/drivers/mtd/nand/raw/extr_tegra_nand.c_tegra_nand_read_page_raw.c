
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int * oob_poi; } ;
struct mtd_info {int oobsize; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int tegra_nand_page_xfer (struct mtd_info*,struct nand_chip*,int *,void*,int ,int,int) ;

__attribute__((used)) static int tegra_nand_read_page_raw(struct nand_chip *chip, u8 *buf,
        int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 void *oob_buf = oob_required ? chip->oob_poi : ((void*)0);

 return tegra_nand_page_xfer(mtd, chip, buf, oob_buf,
        mtd->oobsize, page, 1);
}
