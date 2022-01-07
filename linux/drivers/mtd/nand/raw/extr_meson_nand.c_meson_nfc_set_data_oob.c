
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_2__ {int bytes; int steps; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;


 int memcpy (int const*,int const*,int) ;
 int const* meson_nfc_data_ptr (struct nand_chip*,int) ;
 int const* meson_nfc_oob_ptr (struct nand_chip*,int) ;

__attribute__((used)) static void meson_nfc_set_data_oob(struct nand_chip *nand,
       const u8 *buf, u8 *oobbuf)
{
 int i, oob_len = 0;
 u8 *dsrc, *osrc;

 oob_len = nand->ecc.bytes + 2;
 for (i = 0; i < nand->ecc.steps; i++) {
  if (buf) {
   dsrc = meson_nfc_data_ptr(nand, i);
   memcpy(dsrc, buf, nand->ecc.size);
   buf += nand->ecc.size;
  }
  osrc = meson_nfc_oob_ptr(nand, i);
  memcpy(osrc, oobbuf, oob_len);
  oobbuf += oob_len;
 }
}
