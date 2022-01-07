
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int sd30_drive_sel_3v3; } ;


 int ASPM_FORCE_CTL ;
 int CARD_GPIO ;
 int CARD_GPIO_DIR ;
 int PETXCFG ;
 int SD30_DRIVE_SEL ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int rts5209_extra_init_hw(struct rtsx_pcr *pcr)
{
 rtsx_pci_init_cmd(pcr);


 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_GPIO, 0xFF, 0x03);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, ASPM_FORCE_CTL, 0x3F, 0);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0x08, 0x08);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_GPIO_DIR, 0xFF, 0x03);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD30_DRIVE_SEL,
   0xFF, pcr->sd30_drive_sel_3v3);

 return rtsx_pci_send_cmd(pcr, 100);
}
