
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath10k_vif {scalar_t__ vdev_id; } ;
struct ath10k_mac_tx_pause {scalar_t__ vdev_id; int action; int pause_id; } ;


 int ath10k_mac_vif_handle_tx_pause (struct ath10k_vif*,int ,int ) ;

__attribute__((used)) static void ath10k_mac_handle_tx_pause_iter(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ath10k_mac_tx_pause *arg = data;

 if (arvif->vdev_id != arg->vdev_id)
  return;

 ath10k_mac_vif_handle_tx_pause(arvif, arg->pause_id, arg->action);
}
