
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int * oob_poi; } ;


 int meson_nfc_set_data_oob (struct nand_chip*,int const*,int *) ;
 int meson_nfc_write_page_sub (struct nand_chip*,int,int) ;

__attribute__((used)) static int meson_nfc_write_page_raw(struct nand_chip *nand, const u8 *buf,
        int oob_required, int page)
{
 u8 *oob_buf = nand->oob_poi;

 meson_nfc_set_data_oob(nand, buf, oob_buf);

 return meson_nfc_write_page_sub(nand, page, 1);
}
