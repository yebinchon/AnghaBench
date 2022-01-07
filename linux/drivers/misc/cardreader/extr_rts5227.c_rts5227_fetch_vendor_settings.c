
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_pcr {int card_drive_sel; int flags; int sd30_drive_sel_3v3; int sd30_drive_sel_1v8; int aspm_en; } ;


 int PCR_REVERSE_SOCKET ;
 int PCR_SETTING_REG1 ;
 int PCR_SETTING_REG2 ;
 int pcr_dbg (struct rtsx_pcr*,char*,int ,int ) ;
 int rtsx_pci_read_config_dword (struct rtsx_pcr*,int ,int *) ;
 scalar_t__ rtsx_reg_check_reverse_socket (int ) ;
 int rtsx_reg_to_aspm (int ) ;
 int rtsx_reg_to_card_drive_sel (int ) ;
 int rtsx_reg_to_sd30_drive_sel_1v8 (int ) ;
 int rtsx_reg_to_sd30_drive_sel_3v3 (int ) ;
 int rtsx_vendor_setting_valid (int ) ;

__attribute__((used)) static void rts5227_fetch_vendor_settings(struct rtsx_pcr *pcr)
{
 u32 reg;

 rtsx_pci_read_config_dword(pcr, PCR_SETTING_REG1, &reg);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg);

 if (!rtsx_vendor_setting_valid(reg))
  return;

 pcr->aspm_en = rtsx_reg_to_aspm(reg);
 pcr->sd30_drive_sel_1v8 = rtsx_reg_to_sd30_drive_sel_1v8(reg);
 pcr->card_drive_sel &= 0x3F;
 pcr->card_drive_sel |= rtsx_reg_to_card_drive_sel(reg);

 rtsx_pci_read_config_dword(pcr, PCR_SETTING_REG2, &reg);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG2, reg);
 pcr->sd30_drive_sel_3v3 = rtsx_reg_to_sd30_drive_sel_3v3(reg);
 if (rtsx_reg_check_reverse_socket(reg))
  pcr->flags |= PCR_REVERSE_SOCKET;
}
