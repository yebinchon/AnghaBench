
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_cr_option {scalar_t__ dev_aspm_mode; } ;
struct rtsx_pcr {int aspm_enabled; int aspm_en; struct rtsx_cr_option option; } ;


 int ASPM_FORCE_CTL ;
 scalar_t__ DEV_ASPM_BACKDOOR ;
 scalar_t__ DEV_ASPM_DYNAMIC ;
 int FORCE_ASPM_VAL_MASK ;
 int rtsx_pci_disable_aspm (struct rtsx_pcr*) ;
 int rtsx_pci_enable_aspm (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static void rtsx_comm_set_aspm(struct rtsx_pcr *pcr, bool enable)
{
 struct rtsx_cr_option *option = &pcr->option;

 if (pcr->aspm_enabled == enable)
  return;

 if (option->dev_aspm_mode == DEV_ASPM_DYNAMIC) {
  if (enable)
   rtsx_pci_enable_aspm(pcr);
  else
   rtsx_pci_disable_aspm(pcr);
 } else if (option->dev_aspm_mode == DEV_ASPM_BACKDOOR) {
  u8 mask = FORCE_ASPM_VAL_MASK;
  u8 val = 0;

  if (enable)
   val = pcr->aspm_en;
  rtsx_pci_write_register(pcr, ASPM_FORCE_CTL, mask, val);
 }

 pcr->aspm_enabled = enable;
}
