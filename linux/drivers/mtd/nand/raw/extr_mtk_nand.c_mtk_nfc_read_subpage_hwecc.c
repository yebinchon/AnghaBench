
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;


 int mtk_nfc_read_subpage (int ,struct nand_chip*,int ,int ,int *,int,int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_read_subpage_hwecc(struct nand_chip *chip, u32 off,
          u32 len, u8 *p, int pg)
{
 return mtk_nfc_read_subpage(nand_to_mtd(chip), chip, off, len, p, pg,
        0);
}
