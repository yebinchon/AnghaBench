
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_mac_tx_pause {int pause_id; int action; int vdev_id; } ;
struct TYPE_2__ {int tx_lock; } ;
struct ath10k {TYPE_1__ htt; int hw; } ;
typedef enum wmi_tlv_tx_pause_id { ____Placeholder_wmi_tlv_tx_pause_id } wmi_tlv_tx_pause_id ;
typedef enum wmi_tlv_tx_pause_action { ____Placeholder_wmi_tlv_tx_pause_action } wmi_tlv_tx_pause_action ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ath10k_mac_handle_tx_pause_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath10k_mac_tx_pause*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_mac_handle_tx_pause_vdev(struct ath10k *ar, u32 vdev_id,
         enum wmi_tlv_tx_pause_id pause_id,
         enum wmi_tlv_tx_pause_action action)
{
 struct ath10k_mac_tx_pause arg = {
  .vdev_id = vdev_id,
  .pause_id = pause_id,
  .action = action,
 };

 spin_lock_bh(&ar->htt.tx_lock);
 ieee80211_iterate_active_interfaces_atomic(ar->hw,
         IEEE80211_IFACE_ITER_RESUME_ALL,
         ath10k_mac_handle_tx_pause_iter,
         &arg);
 spin_unlock_bh(&ar->htt.tx_lock);
}
