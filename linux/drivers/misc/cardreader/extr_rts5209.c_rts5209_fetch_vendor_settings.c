
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_pcr {int card_drive_sel; int sd30_drive_sel_3v3; int sd30_drive_sel_1v8; int aspm_en; int flags; } ;


 int PCR_MS_PMOS ;
 int PCR_SETTING_REG1 ;
 int PCR_SETTING_REG2 ;
 int pcr_dbg (struct rtsx_pcr*,char*,int ,int ) ;
 scalar_t__ rts5209_reg_check_ms_pmos (int ) ;
 int rts5209_reg_to_aspm (int ) ;
 int rts5209_reg_to_card_drive_sel (int ) ;
 int rts5209_reg_to_sd30_drive_sel_1v8 (int ) ;
 int rts5209_reg_to_sd30_drive_sel_3v3 (int ) ;
 scalar_t__ rts5209_vendor_setting1_valid (int ) ;
 scalar_t__ rts5209_vendor_setting2_valid (int ) ;
 int rtsx_pci_read_config_dword (struct rtsx_pcr*,int ,int *) ;

__attribute__((used)) static void rts5209_fetch_vendor_settings(struct rtsx_pcr *pcr)
{
 u32 reg;

 rtsx_pci_read_config_dword(pcr, PCR_SETTING_REG1, &reg);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg);

 if (rts5209_vendor_setting1_valid(reg)) {
  if (rts5209_reg_check_ms_pmos(reg))
   pcr->flags |= PCR_MS_PMOS;
  pcr->aspm_en = rts5209_reg_to_aspm(reg);
 }

 rtsx_pci_read_config_dword(pcr, PCR_SETTING_REG2, &reg);
 pcr_dbg(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG2, reg);

 if (rts5209_vendor_setting2_valid(reg)) {
  pcr->sd30_drive_sel_1v8 =
   rts5209_reg_to_sd30_drive_sel_1v8(reg);
  pcr->sd30_drive_sel_3v3 =
   rts5209_reg_to_sd30_drive_sel_3v3(reg);
  pcr->card_drive_sel = rts5209_reg_to_card_drive_sel(reg);
 }
}
