
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_p2p_noa_info {int dummy; } ;
struct ath10k_vif {struct ath10k* ar; } ;
struct ath10k {int data_lock; } ;


 int __ath10k_p2p_noa_update (struct ath10k_vif*,struct wmi_p2p_noa_info const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_p2p_noa_update(struct ath10k_vif *arvif,
      const struct wmi_p2p_noa_info *noa)
{
 struct ath10k *ar = arvif->ar;

 spin_lock_bh(&ar->data_lock);
 __ath10k_p2p_noa_update(arvif, noa);
 spin_unlock_bh(&ar->data_lock);
}
