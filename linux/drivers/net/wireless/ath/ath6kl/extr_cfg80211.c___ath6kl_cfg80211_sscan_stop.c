
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int fw_vif_idx; int sched_scan_timer; int flags; struct ath6kl* ar; } ;
struct ath6kl {scalar_t__ state; int wmi; } ;


 scalar_t__ ATH6KL_STATE_RECOVERY ;
 int SCHED_SCANNING ;
 int ath6kl_wmi_enable_sched_scan_cmd (int ,int ,int) ;
 int del_timer_sync (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool __ath6kl_cfg80211_sscan_stop(struct ath6kl_vif *vif)
{
 struct ath6kl *ar = vif->ar;

 if (!test_and_clear_bit(SCHED_SCANNING, &vif->flags))
  return 0;

 del_timer_sync(&vif->sched_scan_timer);

 if (ar->state == ATH6KL_STATE_RECOVERY)
  return 1;

 ath6kl_wmi_enable_sched_scan_cmd(ar->wmi, vif->fw_vif_idx, 0);

 return 1;
}
