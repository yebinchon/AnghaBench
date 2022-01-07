
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct meson_nfc_nand_chip {int data_buf; int info_buf; } ;


 int kfree (int ) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;

__attribute__((used)) static void meson_nfc_free_buffer(struct nand_chip *nand)
{
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);

 kfree(meson_chip->info_buf);
 kfree(meson_chip->data_buf);
}
