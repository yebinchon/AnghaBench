
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 int NFC_ACTIVE_CS_MASK ;
 int NFC_ACTIVE_CS_SHIFT ;
 int NFC_BUF_ADDR ;
 int NFC_CE ;
 int NFC_CONFIG1 ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nfc_clear (struct mtd_info*,int ,int) ;
 int nfc_set (struct mtd_info*,int ,int) ;

__attribute__((used)) static void mpc5121_nfc_select_chip(struct nand_chip *nand, int chip)
{
 struct mtd_info *mtd = nand_to_mtd(nand);

 if (chip < 0) {
  nfc_clear(mtd, NFC_CONFIG1, NFC_CE);
  return;
 }

 nfc_clear(mtd, NFC_BUF_ADDR, NFC_ACTIVE_CS_MASK);
 nfc_set(mtd, NFC_BUF_ADDR, (chip << NFC_ACTIVE_CS_SHIFT) &
       NFC_ACTIVE_CS_MASK);
 nfc_set(mtd, NFC_CONFIG1, NFC_CE);
}
