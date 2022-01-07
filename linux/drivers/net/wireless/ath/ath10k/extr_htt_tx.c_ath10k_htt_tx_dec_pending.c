
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int num_pending_tx; int max_num_pending_tx; int ar; int tx_lock; } ;


 int ATH10K_TX_PAUSE_Q_FULL ;
 int ath10k_mac_tx_unlock (int ,int ) ;
 int lockdep_assert_held (int *) ;

void ath10k_htt_tx_dec_pending(struct ath10k_htt *htt)
{
 lockdep_assert_held(&htt->tx_lock);

 htt->num_pending_tx--;
 if (htt->num_pending_tx == htt->max_num_pending_tx - 1)
  ath10k_mac_tx_unlock(htt->ar, ATH10K_TX_PAUSE_Q_FULL);
}
