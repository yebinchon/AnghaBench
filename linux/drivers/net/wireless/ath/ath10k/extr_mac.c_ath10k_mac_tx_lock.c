
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_lock; } ;
struct ath10k {int hw; int tx_paused; TYPE_1__ htt; } ;


 int ATH10K_TX_PAUSE_MAX ;
 int BIT (int) ;
 int WARN_ON (int) ;
 int ieee80211_stop_queues (int ) ;
 int lockdep_assert_held (int *) ;

void ath10k_mac_tx_lock(struct ath10k *ar, int reason)
{
 lockdep_assert_held(&ar->htt.tx_lock);

 WARN_ON(reason >= ATH10K_TX_PAUSE_MAX);
 ar->tx_paused |= BIT(reason);
 ieee80211_stop_queues(ar->hw);
}
