
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int NFC_BUF_ADDR ;
 int NFC_CONFIG2 ;
 int NFC_OUTPUT ;
 int NFC_RBA_MASK ;
 int mpc5121_nfc_done (struct mtd_info*) ;
 int nfc_clear (struct mtd_info*,int ,int ) ;
 int nfc_write (struct mtd_info*,int ,int ) ;

__attribute__((used)) static inline void mpc5121_nfc_send_read_page(struct mtd_info *mtd)
{
 nfc_clear(mtd, NFC_BUF_ADDR, NFC_RBA_MASK);
 nfc_write(mtd, NFC_CONFIG2, NFC_OUTPUT);
 mpc5121_nfc_done(mtd);
}
