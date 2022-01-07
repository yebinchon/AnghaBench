
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; } ;


 int mtk_nfc_read_subpage (struct mtd_info*,struct nand_chip*,int ,int ,int *,int,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_read_page_hwecc(struct nand_chip *chip, u8 *p, int oob_on,
       int pg)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 return mtk_nfc_read_subpage(mtd, chip, 0, mtd->writesize, p, pg, 0);
}
