
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath10k_vif {scalar_t__ vdev_id; } ;
struct ath10k_p2p_noa_arg {scalar_t__ vdev_id; int noa; } ;


 int ath10k_p2p_noa_update (struct ath10k_vif*,int ) ;

__attribute__((used)) static void ath10k_p2p_noa_update_vdev_iter(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ath10k_p2p_noa_arg *arg = data;

 if (arvif->vdev_id != arg->vdev_id)
  return;

 ath10k_p2p_noa_update(arvif, arg->noa);
}
