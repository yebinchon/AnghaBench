
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int mtk_nfc_read_page_raw (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int mtk_nfc_read_oob_std(struct nand_chip *chip, int page)
{
 return mtk_nfc_read_page_raw(chip, ((void*)0), 1, page);
}
