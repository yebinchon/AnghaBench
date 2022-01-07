
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_vif_iter {struct ath10k_vif* arvif; int vdev_id; } ;
struct ath10k_vif {int dummy; } ;
struct ath10k {int hw; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ath10k_get_arvif_iter ;
 int ath10k_warn (struct ath10k*,char*,int ) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath10k_vif_iter*) ;
 int memset (struct ath10k_vif_iter*,int ,int) ;

struct ath10k_vif *ath10k_get_arvif(struct ath10k *ar, u32 vdev_id)
{
 struct ath10k_vif_iter arvif_iter;
 u32 flags;

 memset(&arvif_iter, 0, sizeof(struct ath10k_vif_iter));
 arvif_iter.vdev_id = vdev_id;

 flags = IEEE80211_IFACE_ITER_RESUME_ALL;
 ieee80211_iterate_active_interfaces_atomic(ar->hw,
         flags,
         ath10k_get_arvif_iter,
         &arvif_iter);
 if (!arvif_iter.arvif) {
  ath10k_warn(ar, "No VIF found for vdev %d\n", vdev_id);
  return ((void*)0);
 }

 return arvif_iter.arvif;
}
