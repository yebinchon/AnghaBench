
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_cr_option {int ltr_active_latency; scalar_t__ ltr_enabled; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;


 int LTR_L1SS_PWR_GATE_EN ;
 scalar_t__ rtsx_check_dev_flag (struct rtsx_pcr*,int ) ;
 int rtsx_disable_aspm (struct rtsx_pcr*) ;
 int rtsx_set_l1off_sub_cfg_d0 (struct rtsx_pcr*,int) ;
 int rtsx_set_ltr_latency (struct rtsx_pcr*,int ) ;

__attribute__((used)) static void rtsx_comm_pm_full_on(struct rtsx_pcr *pcr)
{
 struct rtsx_cr_option *option = &pcr->option;

 rtsx_disable_aspm(pcr);

 if (option->ltr_enabled)
  rtsx_set_ltr_latency(pcr, option->ltr_active_latency);

 if (rtsx_check_dev_flag(pcr, LTR_L1SS_PWR_GATE_EN))
  rtsx_set_l1off_sub_cfg_d0(pcr, 1);
}
