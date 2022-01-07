
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int meson_nfc_free_buffer (struct nand_chip*) ;

__attribute__((used)) static void meson_nand_detach_chip(struct nand_chip *nand)
{
 meson_nfc_free_buffer(nand);
}
