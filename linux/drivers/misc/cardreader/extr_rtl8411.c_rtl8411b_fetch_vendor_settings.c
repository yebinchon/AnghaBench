
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_pcr {void* sd30_drive_sel_3v3; void* sd30_drive_sel_1v8; int aspm_en; } ;


 int PCR_SETTING_REG1 ;
 void* map_sd_drive (int ) ;
 int pcr_dbg (struct rtsx_pcr*,char*,int ,int ) ;
 int rtl8411b_reg_to_sd30_drive_sel_3v3 (int ) ;
 int rtsx_pci_read_config_dword (struct rtsx_pcr*,int ,int *) ;
 int rtsx_reg_to_aspm (int ) ;
 int rtsx_reg_to_sd30_drive_sel_1v8 (int ) ;
 int rtsx_vendor_setting_valid (int ) ;

__attribute__((used)) static void rtl8411b_fetch_vendor_settings(struct rtsx_pcr *pcr)
{
 u32 reg = 0;

 rtsx_pci_read_config_dword(pcr, PCR_SETTING_REG1, &reg);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg);

 if (!rtsx_vendor_setting_valid(reg))
  return;

 pcr->aspm_en = rtsx_reg_to_aspm(reg);
 pcr->sd30_drive_sel_1v8 =
  map_sd_drive(rtsx_reg_to_sd30_drive_sel_1v8(reg));
 pcr->sd30_drive_sel_3v3 =
  map_sd_drive(rtl8411b_reg_to_sd30_drive_sel_3v3(reg));
}
