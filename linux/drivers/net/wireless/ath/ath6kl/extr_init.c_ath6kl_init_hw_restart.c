
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int flag; } ;


 int ATH6KL_DBG_RECOVERY ;
 int WMI_READY ;
 scalar_t__ __ath6kl_init_hw_start (struct ath6kl*) ;
 scalar_t__ __ath6kl_init_hw_stop (struct ath6kl*) ;
 int ath6kl_cfg80211_stop_all (struct ath6kl*) ;
 int ath6kl_dbg (int ,char*) ;
 int clear_bit (int ,int *) ;

void ath6kl_init_hw_restart(struct ath6kl *ar)
{
 clear_bit(WMI_READY, &ar->flag);

 ath6kl_cfg80211_stop_all(ar);

 if (__ath6kl_init_hw_stop(ar)) {
  ath6kl_dbg(ATH6KL_DBG_RECOVERY, "Failed to stop during fw error recovery\n");
  return;
 }

 if (__ath6kl_init_hw_start(ar)) {
  ath6kl_dbg(ATH6KL_DBG_RECOVERY, "Failed to restart during fw error recovery\n");
  return;
 }
}
