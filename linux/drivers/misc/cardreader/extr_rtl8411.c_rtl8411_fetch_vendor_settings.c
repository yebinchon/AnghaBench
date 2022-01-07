
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtsx_pcr {int card_drive_sel; int sd30_drive_sel_3v3; int sd30_drive_sel_1v8; int aspm_en; } ;


 int PCR_SETTING_REG1 ;
 int PCR_SETTING_REG3 ;
 int map_sd_drive (int ) ;
 int pcr_dbg (struct rtsx_pcr*,char*,int ,int ) ;
 int rtl8411_reg_to_sd30_drive_sel_3v3 (int ) ;
 int rtsx_pci_read_config_byte (struct rtsx_pcr*,int ,int *) ;
 int rtsx_pci_read_config_dword (struct rtsx_pcr*,int ,int *) ;
 int rtsx_reg_to_aspm (int ) ;
 int rtsx_reg_to_card_drive_sel (int ) ;
 int rtsx_reg_to_sd30_drive_sel_1v8 (int ) ;
 int rtsx_vendor_setting_valid (int ) ;

__attribute__((used)) static void rtl8411_fetch_vendor_settings(struct rtsx_pcr *pcr)
{
 u32 reg1 = 0;
 u8 reg3 = 0;

 rtsx_pci_read_config_dword(pcr, PCR_SETTING_REG1, &reg1);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg1);

 if (!rtsx_vendor_setting_valid(reg1))
  return;

 pcr->aspm_en = rtsx_reg_to_aspm(reg1);
 pcr->sd30_drive_sel_1v8 =
  map_sd_drive(rtsx_reg_to_sd30_drive_sel_1v8(reg1));
 pcr->card_drive_sel &= 0x3F;
 pcr->card_drive_sel |= rtsx_reg_to_card_drive_sel(reg1);

 rtsx_pci_read_config_byte(pcr, PCR_SETTING_REG3, &reg3);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG3, reg3);
 pcr->sd30_drive_sel_3v3 = rtl8411_reg_to_sd30_drive_sel_3v3(reg3);
}
