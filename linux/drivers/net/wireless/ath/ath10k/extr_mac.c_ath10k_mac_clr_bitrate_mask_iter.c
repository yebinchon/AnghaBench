
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vht_supported; } ;
struct ieee80211_sta {int addr; TYPE_1__ vht_cap; scalar_t__ drv_priv; } ;
struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct ath10k_sta {struct ath10k_vif* arvif; } ;
struct ath10k {int dummy; } ;


 int WMI_FIXED_RATE_NONE ;
 int WMI_PEER_PARAM_FIXED_RATE ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_peer_set_param (struct ath10k*,int ,int ,int ,int ) ;

__attribute__((used)) static void ath10k_mac_clr_bitrate_mask_iter(void *data,
          struct ieee80211_sta *sta)
{
 struct ath10k_vif *arvif = data;
 struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
 struct ath10k *ar = arvif->ar;
 int err;


 if (arsta->arvif != arvif || !sta->vht_cap.vht_supported)
  return;

 err = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
     WMI_PEER_PARAM_FIXED_RATE,
     WMI_FIXED_RATE_NONE);
 if (err)
  ath10k_warn(ar, "failed to clear STA %pM peer fixed rate: %d\n",
       sta->addr, err);
}
