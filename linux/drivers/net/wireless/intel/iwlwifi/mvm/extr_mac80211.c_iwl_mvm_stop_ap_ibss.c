
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int csa_countdown; int ap_ibss_active; int id; int time_event_data; } ;
struct iwl_mvm {int mutex; TYPE_1__* fw; scalar_t__ p2p_device_vif; scalar_t__ ap_last_beacon_gp2; scalar_t__ csa_tx_block_bcn_timeout; int csa_tx_blocked_vif; int csa_vif; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int ucode_capa; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_UCODE_TLV_API_STA_TYPE ;
 int LOW_LATENCY_VIF_TYPE ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int RCU_INIT_POINTER (int ,int *) ;
 scalar_t__ fw_has_api (int *,int ) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_bt_coex_vif_change (struct iwl_mvm*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,scalar_t__,int,int *) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_prepare_mac_removal (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,int *) ;
 int iwl_mvm_rm_mcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_send_low_latency_cmd (struct iwl_mvm*,int,int ) ;
 int iwl_mvm_send_rm_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_mvm_vif_set_low_latency (struct iwl_mvm_vif*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_vif* rcu_access_pointer (int ) ;

__attribute__((used)) static void iwl_mvm_stop_ap_ibss(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 iwl_mvm_prepare_mac_removal(mvm, vif);

 mutex_lock(&mvm->mutex);


 if (rcu_access_pointer(mvm->csa_vif) == vif) {
  iwl_mvm_remove_time_event(mvm, mvmvif,
       &mvmvif->time_event_data);
  RCU_INIT_POINTER(mvm->csa_vif, ((void*)0));
  mvmvif->csa_countdown = 0;
 }

 if (rcu_access_pointer(mvm->csa_tx_blocked_vif) == vif) {
  RCU_INIT_POINTER(mvm->csa_tx_blocked_vif, ((void*)0));
  mvm->csa_tx_block_bcn_timeout = 0;
 }

 mvmvif->ap_ibss_active = 0;
 mvm->ap_last_beacon_gp2 = 0;

 if (vif->type == NL80211_IFTYPE_AP && !vif->p2p) {
  iwl_mvm_vif_set_low_latency(mvmvif, 0,
         LOW_LATENCY_VIF_TYPE);
  iwl_mvm_send_low_latency_cmd(mvm, 0, mvmvif->id);
 }

 iwl_mvm_bt_coex_vif_change(mvm);


 if (vif->p2p && mvm->p2p_device_vif)
  iwl_mvm_mac_ctxt_changed(mvm, mvm->p2p_device_vif, 0, ((void*)0));

 iwl_mvm_update_quotas(mvm, 0, ((void*)0));
 if (!fw_has_api(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
  iwl_mvm_rm_mcast_sta(mvm, vif);
 iwl_mvm_send_rm_bcast_sta(mvm, vif);
 if (fw_has_api(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
  iwl_mvm_rm_mcast_sta(mvm, vif);
 iwl_mvm_binding_remove_vif(mvm, vif);

 iwl_mvm_power_update_mac(mvm);

 iwl_mvm_mac_ctxt_remove(mvm, vif);

 mutex_unlock(&mvm->mutex);
}
