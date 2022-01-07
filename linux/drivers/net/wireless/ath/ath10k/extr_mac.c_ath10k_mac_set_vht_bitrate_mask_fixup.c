
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int vht_supported; } ;
struct ieee80211_sta {int addr; TYPE_1__ vht_cap; } ;
struct ath10k_vif {int vht_num_rates; int vdev_id; int vht_pfr; } ;
struct ath10k {int dummy; } ;


 int WMI_PEER_PARAM_FIXED_RATE ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_peer_set_param (struct ath10k*,int ,int ,int ,int ) ;

__attribute__((used)) static bool ath10k_mac_set_vht_bitrate_mask_fixup(struct ath10k *ar,
        struct ath10k_vif *arvif,
        struct ieee80211_sta *sta)
{
 int err;
 u8 rate = arvif->vht_pfr;


 if (!sta->vht_cap.vht_supported || arvif->vht_num_rates != 1)
  return 0;

 err = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
     WMI_PEER_PARAM_FIXED_RATE, rate);
 if (err)
  ath10k_warn(ar, "failed to eanble STA %pM peer fixed rate: %d\n",
       sta->addr, err);

 return 1;
}
