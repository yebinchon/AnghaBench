
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_sta_ht_cap {int cap; int ht_supported; } ;
struct ath10k_vif {int vdev_id; } ;
struct ath10k {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int IEEE80211_HT_CAP_SM_PS ;
 int IEEE80211_HT_CAP_SM_PS_SHIFT ;
 int WMI_PEER_SMPS_STATE ;
 int * ath10k_smps_map ;
 int ath10k_wmi_peer_set_param (struct ath10k*,int ,int const*,int ,int ) ;

__attribute__((used)) static int ath10k_setup_peer_smps(struct ath10k *ar, struct ath10k_vif *arvif,
      const u8 *addr,
      const struct ieee80211_sta_ht_cap *ht_cap)
{
 int smps;

 if (!ht_cap->ht_supported)
  return 0;

 smps = ht_cap->cap & IEEE80211_HT_CAP_SM_PS;
 smps >>= IEEE80211_HT_CAP_SM_PS_SHIFT;

 if (smps >= ARRAY_SIZE(ath10k_smps_map))
  return -EINVAL;

 return ath10k_wmi_peer_set_param(ar, arvif->vdev_id, addr,
      WMI_PEER_SMPS_STATE,
      ath10k_smps_map[smps]);
}
