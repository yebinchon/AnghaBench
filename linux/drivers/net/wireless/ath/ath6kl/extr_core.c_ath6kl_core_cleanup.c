
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int fw_testscript; int fw_patch; int fw; int fw_otp; int fw_board; scalar_t__ htc_target; int ath6kl_wq; } ;


 int ath6kl_bmi_cleanup (struct ath6kl*) ;
 int ath6kl_cfg80211_cleanup (struct ath6kl*) ;
 int ath6kl_cleanup_amsdu_rxbufs (struct ath6kl*) ;
 int ath6kl_cookie_cleanup (struct ath6kl*) ;
 int ath6kl_debug_cleanup (struct ath6kl*) ;
 int ath6kl_hif_power_off (struct ath6kl*) ;
 int ath6kl_htc_cleanup (scalar_t__) ;
 int ath6kl_recovery_cleanup (struct ath6kl*) ;
 int destroy_workqueue (int ) ;
 int kfree (int ) ;
 int vfree (int ) ;

void ath6kl_core_cleanup(struct ath6kl *ar)
{
 ath6kl_hif_power_off(ar);

 ath6kl_recovery_cleanup(ar);

 destroy_workqueue(ar->ath6kl_wq);

 if (ar->htc_target)
  ath6kl_htc_cleanup(ar->htc_target);

 ath6kl_cookie_cleanup(ar);

 ath6kl_cleanup_amsdu_rxbufs(ar);

 ath6kl_bmi_cleanup(ar);

 ath6kl_debug_cleanup(ar);

 kfree(ar->fw_board);
 kfree(ar->fw_otp);
 vfree(ar->fw);
 kfree(ar->fw_patch);
 kfree(ar->fw_testscript);

 ath6kl_cfg80211_cleanup(ar);
}
