
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct ath10k_vif {scalar_t__ vdev_id; int connection_loss_work; int is_up; struct ath10k* ar; } ;
struct ath10k {struct ieee80211_hw* hw; } ;


 int ATH10K_CONNECTION_LOSS_HZ ;
 int ieee80211_beacon_loss (struct ieee80211_vif*) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;

__attribute__((used)) static void ath10k_mac_handle_beacon_miss_iter(void *data, u8 *mac,
            struct ieee80211_vif *vif)
{
 u32 *vdev_id = data;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ath10k *ar = arvif->ar;
 struct ieee80211_hw *hw = ar->hw;

 if (arvif->vdev_id != *vdev_id)
  return;

 if (!arvif->is_up)
  return;

 ieee80211_beacon_loss(vif);






 ieee80211_queue_delayed_work(hw, &arvif->connection_loss_work,
         ATH10K_CONNECTION_LOSS_HZ);
}
