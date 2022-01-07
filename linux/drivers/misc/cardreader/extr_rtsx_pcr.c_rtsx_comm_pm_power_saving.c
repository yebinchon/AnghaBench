
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_cr_option {int l1_snooze_delay; int ltr_l1off_latency; scalar_t__ ltr_enabled; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;


 int L1_SNOOZE_TEST_EN ;
 int LTR_L1SS_PWR_GATE_EN ;
 int mdelay (int ) ;
 scalar_t__ rtsx_check_dev_flag (struct rtsx_pcr*,int ) ;
 int rtsx_enable_aspm (struct rtsx_pcr*) ;
 int rtsx_set_l1off_sub_cfg_d0 (struct rtsx_pcr*,int ) ;
 int rtsx_set_ltr_latency (struct rtsx_pcr*,int ) ;

__attribute__((used)) static void rtsx_comm_pm_power_saving(struct rtsx_pcr *pcr)
{
 struct rtsx_cr_option *option = &pcr->option;

 if (option->ltr_enabled) {
  u32 latency = option->ltr_l1off_latency;

  if (rtsx_check_dev_flag(pcr, L1_SNOOZE_TEST_EN))
   mdelay(option->l1_snooze_delay);

  rtsx_set_ltr_latency(pcr, latency);
 }

 if (rtsx_check_dev_flag(pcr, LTR_L1SS_PWR_GATE_EN))
  rtsx_set_l1off_sub_cfg_d0(pcr, 0);

 rtsx_enable_aspm(pcr);
}
