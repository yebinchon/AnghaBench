
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ath10k_mac_handle_beacon_miss_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int *) ;

void ath10k_mac_handle_beacon_miss(struct ath10k *ar, u32 vdev_id)
{
 ieee80211_iterate_active_interfaces_atomic(ar->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         ath10k_mac_handle_beacon_miss_iter,
         &vdev_id);
}
