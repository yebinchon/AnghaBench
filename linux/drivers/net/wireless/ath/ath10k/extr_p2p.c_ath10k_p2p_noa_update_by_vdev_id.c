
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_p2p_noa_info {int dummy; } ;
struct ath10k_p2p_noa_arg {struct wmi_p2p_noa_info const* noa; int vdev_id; } ;
struct ath10k {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ath10k_p2p_noa_update_vdev_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath10k_p2p_noa_arg*) ;

void ath10k_p2p_noa_update_by_vdev_id(struct ath10k *ar, u32 vdev_id,
          const struct wmi_p2p_noa_info *noa)
{
 struct ath10k_p2p_noa_arg arg = {
  .vdev_id = vdev_id,
  .noa = noa,
 };

 ieee80211_iterate_active_interfaces_atomic(ar->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         ath10k_p2p_noa_update_vdev_iter,
         &arg);
}
