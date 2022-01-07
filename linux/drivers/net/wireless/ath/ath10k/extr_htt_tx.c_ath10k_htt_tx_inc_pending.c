
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {scalar_t__ num_pending_tx; scalar_t__ max_num_pending_tx; int ar; int tx_lock; } ;


 int ATH10K_TX_PAUSE_Q_FULL ;
 int EBUSY ;
 int ath10k_mac_tx_lock (int ,int ) ;
 int lockdep_assert_held (int *) ;

int ath10k_htt_tx_inc_pending(struct ath10k_htt *htt)
{
 lockdep_assert_held(&htt->tx_lock);

 if (htt->num_pending_tx >= htt->max_num_pending_tx)
  return -EBUSY;

 htt->num_pending_tx++;
 if (htt->num_pending_tx == htt->max_num_pending_tx)
  ath10k_mac_tx_lock(htt->ar, ATH10K_TX_PAUSE_Q_FULL);

 return 0;
}
