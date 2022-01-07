
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {scalar_t__ state; int htt; int conf_mutex; } ;


 scalar_t__ ATH10K_STATE_RESTARTING ;
 scalar_t__ ATH10K_STATE_UTF ;
 int WMI_PDEV_SUSPEND_AND_DISABLE_INTR ;
 int ath10k_debug_stop (struct ath10k*) ;
 int ath10k_hif_stop (struct ath10k*) ;
 int ath10k_htt_rx_free (int *) ;
 int ath10k_htt_tx_stop (int *) ;
 int ath10k_wait_for_suspend (struct ath10k*,int ) ;
 int ath10k_wmi_detach (struct ath10k*) ;
 int lockdep_assert_held (int *) ;

void ath10k_core_stop(struct ath10k *ar)
{
 lockdep_assert_held(&ar->conf_mutex);
 ath10k_debug_stop(ar);


 if (ar->state != ATH10K_STATE_RESTARTING &&
     ar->state != ATH10K_STATE_UTF)
  ath10k_wait_for_suspend(ar, WMI_PDEV_SUSPEND_AND_DISABLE_INTR);

 ath10k_hif_stop(ar);
 ath10k_htt_tx_stop(&ar->htt);
 ath10k_htt_rx_free(&ar->htt);
 ath10k_wmi_detach(ar);
}
