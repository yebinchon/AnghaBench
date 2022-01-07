
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int meson_nfc_read_page_raw (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int meson_nfc_read_oob_raw(struct nand_chip *nand, int page)
{
 return meson_nfc_read_page_raw(nand, ((void*)0), 1, page);
}
