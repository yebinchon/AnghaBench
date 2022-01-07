
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int size; int bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct meson_nfc_nand_chip {int * data_buf; } ;


 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;

__attribute__((used)) static u8 *meson_nfc_oob_ptr(struct nand_chip *nand, int i)
{
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 int len;

 len = nand->ecc.size * (i + 1) + (nand->ecc.bytes + 2) * i;

 return meson_chip->data_buf + len;
}
