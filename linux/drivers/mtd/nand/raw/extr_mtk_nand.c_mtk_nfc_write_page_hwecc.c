
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int mtk_nfc_write_page (int ,struct nand_chip*,int const*,int,int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
        int oob_on, int page)
{
 return mtk_nfc_write_page(nand_to_mtd(chip), chip, buf, page, 0);
}
