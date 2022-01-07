
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int sd30_drive_sel_3v3; } ;


 int CD_AUTO_DISABLE ;
 int CD_DISABLE_MASK ;
 int CD_ENABLE ;
 int CD_PAD_CTL ;
 int SD30_DRIVE_SEL ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int rtl8411_extra_init_hw(struct rtsx_pcr *pcr)
{
 rtsx_pci_init_cmd(pcr);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD30_DRIVE_SEL,
   0xFF, pcr->sd30_drive_sel_3v3);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CD_PAD_CTL,
   CD_DISABLE_MASK | CD_AUTO_DISABLE, CD_ENABLE);

 return rtsx_pci_send_cmd(pcr, 100);
}
