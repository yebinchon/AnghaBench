
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct meson_nfc_nand_chip {int* info_buf; } ;
typedef int __le64 ;


 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;

__attribute__((used)) static void meson_nfc_set_user_byte(struct nand_chip *nand, u8 *oob_buf)
{
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 __le64 *info;
 int i, count;

 for (i = 0, count = 0; i < nand->ecc.steps; i++, count += 2) {
  info = &meson_chip->info_buf[i];
  *info |= oob_buf[count];
  *info |= oob_buf[count + 1] << 8;
 }
}
