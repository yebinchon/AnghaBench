
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct TYPE_2__ {int tx_lock; } ;
struct ath10k {TYPE_1__ htt; } ;
typedef enum wmi_tlv_tx_pause_id { ____Placeholder_wmi_tlv_tx_pause_id } wmi_tlv_tx_pause_id ;
typedef enum wmi_tlv_tx_pause_action { ____Placeholder_wmi_tlv_tx_pause_action } wmi_tlv_tx_pause_action ;


 int ATH10K_DBG_BOOT ;


 int ath10k_dbg (struct ath10k*,int ,char*,int,int ) ;
 int ath10k_mac_vif_tx_lock (struct ath10k_vif*,int) ;
 int ath10k_mac_vif_tx_unlock (struct ath10k_vif*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_mac_vif_handle_tx_pause(struct ath10k_vif *arvif,
        enum wmi_tlv_tx_pause_id pause_id,
        enum wmi_tlv_tx_pause_action action)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->htt.tx_lock);

 switch (action) {
 case 129:
  ath10k_mac_vif_tx_lock(arvif, pause_id);
  break;
 case 128:
  ath10k_mac_vif_tx_unlock(arvif, pause_id);
  break;
 default:
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "received unknown tx pause action %d on vdev %i, ignoring\n",
       action, arvif->vdev_id);
  break;
 }
}
