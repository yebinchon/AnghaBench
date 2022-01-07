
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath10k_vif {int vdev_id; scalar_t__ tx_paused; } ;
struct ath10k {int hw; } ;


 int ieee80211_wake_queue (int ,int ) ;

__attribute__((used)) static void ath10k_mac_tx_unlock_iter(void *data, u8 *mac,
          struct ieee80211_vif *vif)
{
 struct ath10k *ar = data;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;

 if (arvif->tx_paused)
  return;

 ieee80211_wake_queue(ar->hw, arvif->vdev_id);
}
