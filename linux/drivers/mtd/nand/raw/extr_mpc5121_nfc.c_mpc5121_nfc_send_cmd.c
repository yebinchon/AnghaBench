
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mtd_info {int dummy; } ;


 int NFC_COMMAND ;
 int NFC_CONFIG2 ;
 int NFC_FLASH_CMD ;
 int mpc5121_nfc_done (struct mtd_info*) ;
 int nfc_write (struct mtd_info*,int ,int ) ;

__attribute__((used)) static inline void mpc5121_nfc_send_cmd(struct mtd_info *mtd, u16 cmd)
{
 nfc_write(mtd, NFC_FLASH_CMD, cmd);
 nfc_write(mtd, NFC_CONFIG2, NFC_COMMAND);
 mpc5121_nfc_done(mtd);
}
