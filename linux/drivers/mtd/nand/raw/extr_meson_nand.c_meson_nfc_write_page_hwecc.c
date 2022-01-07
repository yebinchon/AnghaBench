
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; int * oob_poi; } ;
struct mtd_info {int writesize; } ;
struct meson_nfc_nand_chip {int info_buf; int data_buf; } ;


 int PER_INFO_BYTE ;
 int memcpy (int ,int const*,int ) ;
 int memset (int ,int ,int) ;
 int meson_nfc_set_user_byte (struct nand_chip*,int *) ;
 int meson_nfc_write_page_sub (struct nand_chip*,int,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;

__attribute__((used)) static int meson_nfc_write_page_hwecc(struct nand_chip *nand,
          const u8 *buf, int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 u8 *oob_buf = nand->oob_poi;

 memcpy(meson_chip->data_buf, buf, mtd->writesize);
 memset(meson_chip->info_buf, 0, nand->ecc.steps * PER_INFO_BYTE);
 meson_nfc_set_user_byte(nand, oob_buf);

 return meson_nfc_write_page_sub(nand, page, 0);
}
