
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtsx_cr_option {int ltr_l1off_sspwrgate; int ltr_l1off_snooze_sspwrgate; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;


 int ASPM_L1_1_EN ;
 int ASPM_L1_2_EN ;
 int L1OFF_MBIAS2_EN_5250 ;
 int LTR_L1SS_PWR_GATE_CHECK_CARD_EN ;
 int MS_EXIST ;
 int RTSX_BIPR ;
 int SD_EXIST ;
 int rtsx_check_dev_flag (struct rtsx_pcr*,int ) ;
 int rtsx_pci_readl (struct rtsx_pcr*,int ) ;
 int rtsx_set_l1off_sub (struct rtsx_pcr*,int ) ;

__attribute__((used)) static void rts5260_set_l1off_cfg_sub_d0(struct rtsx_pcr *pcr, int active)
{
 struct rtsx_cr_option *option = &pcr->option;
 u32 interrupt = rtsx_pci_readl(pcr, RTSX_BIPR);
 int card_exist = (interrupt & SD_EXIST) | (interrupt & MS_EXIST);
 int aspm_L1_1, aspm_L1_2;
 u8 val = 0;

 aspm_L1_1 = rtsx_check_dev_flag(pcr, ASPM_L1_1_EN);
 aspm_L1_2 = rtsx_check_dev_flag(pcr, ASPM_L1_2_EN);

 if (active) {

  if (aspm_L1_1)
   val = option->ltr_l1off_snooze_sspwrgate;
 } else {

  if (aspm_L1_2)
   val = option->ltr_l1off_sspwrgate;
 }

 if (aspm_L1_1 || aspm_L1_2) {
  if (rtsx_check_dev_flag(pcr,
     LTR_L1SS_PWR_GATE_CHECK_CARD_EN)) {
   if (card_exist)
    val &= ~L1OFF_MBIAS2_EN_5250;
   else
    val |= L1OFF_MBIAS2_EN_5250;
  }
 }
 rtsx_set_l1off_sub(pcr, val);
}
