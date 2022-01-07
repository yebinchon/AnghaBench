
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_vif {int vdev_id; int tx_paused; struct ath10k* ar; } ;
struct TYPE_2__ {int tx_lock; } ;
struct ath10k {int hw; TYPE_1__ htt; } ;


 int BIT (int) ;
 int BITS_PER_LONG ;
 int WARN_ON (int) ;
 int ieee80211_stop_queue (int ,int ) ;
 int lockdep_assert_held (int *) ;

void ath10k_mac_vif_tx_lock(struct ath10k_vif *arvif, int reason)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->htt.tx_lock);

 WARN_ON(reason >= BITS_PER_LONG);
 arvif->tx_paused |= BIT(reason);
 ieee80211_stop_queue(ar->hw, arvif->vdev_id);
}
