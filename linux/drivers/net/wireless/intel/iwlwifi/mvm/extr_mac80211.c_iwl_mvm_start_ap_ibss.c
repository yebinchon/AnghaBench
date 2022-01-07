
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int ap_ibss_active; int id; struct ieee80211_key_conf** ap_early_keys; scalar_t__ ap_assoc_sta_count; } ;
struct iwl_mvm {int mutex; scalar_t__ p2p_device_vif; TYPE_1__* fw; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int ARRAY_SIZE (struct ieee80211_key_conf**) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_UCODE_TLV_API_STA_TYPE ;
 int LOW_LATENCY_VIF_TYPE ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int SET_KEY ;
 int __iwl_mvm_mac_set_key (struct ieee80211_hw*,int ,struct ieee80211_vif*,int *,struct ieee80211_key_conf*) ;
 scalar_t__ fw_has_api (int *,int ) ;
 int iwl_mvm_add_mcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_bt_coex_vif_change (struct iwl_mvm*) ;
 int iwl_mvm_ftm_restart_responder (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_add (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_beacon_changed (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,scalar_t__,int,int *) ;
 int iwl_mvm_mac_ctxt_recalc_tsf_id (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_phy_ctx_count (struct iwl_mvm*) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_rm_mcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_send_add_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_send_low_latency_cmd (struct iwl_mvm*,int,int ) ;
 int iwl_mvm_send_rm_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_teardown_tdls_peers (struct iwl_mvm*) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_mvm_vif_set_low_latency (struct iwl_mvm_vif*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_start_ap_ibss(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret, i;

 mutex_lock(&mvm->mutex);


 ret = iwl_mvm_mac_ctxt_beacon_changed(mvm, vif);
 if (ret)
  goto out_unlock;





 if (vif->type == NL80211_IFTYPE_AP)
  iwl_mvm_mac_ctxt_recalc_tsf_id(mvm, vif);

 mvmvif->ap_assoc_sta_count = 0;


 ret = iwl_mvm_mac_ctxt_add(mvm, vif);
 if (ret)
  goto out_unlock;


 ret = iwl_mvm_binding_add_vif(mvm, vif);
 if (ret)
  goto out_remove;
 if (fw_has_api(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE)) {
  ret = iwl_mvm_add_mcast_sta(mvm, vif);
  if (ret)
   goto out_unbind;




  ret = iwl_mvm_send_add_bcast_sta(mvm, vif);
  if (ret) {
   iwl_mvm_rm_mcast_sta(mvm, vif);
   goto out_unbind;
  }
 } else {




  ret = iwl_mvm_send_add_bcast_sta(mvm, vif);
  if (ret)
   goto out_unbind;
  ret = iwl_mvm_add_mcast_sta(mvm, vif);
  if (ret) {
   iwl_mvm_send_rm_bcast_sta(mvm, vif);
   goto out_unbind;
  }
 }


 mvmvif->ap_ibss_active = 1;


 for (i = 0; i < ARRAY_SIZE(mvmvif->ap_early_keys); i++) {
  struct ieee80211_key_conf *key = mvmvif->ap_early_keys[i];

  if (!key)
   continue;

  mvmvif->ap_early_keys[i] = ((void*)0);

  ret = __iwl_mvm_mac_set_key(hw, SET_KEY, vif, ((void*)0), key);
  if (ret)
   goto out_quota_failed;
 }

 if (vif->type == NL80211_IFTYPE_AP && !vif->p2p) {
  iwl_mvm_vif_set_low_latency(mvmvif, 1,
         LOW_LATENCY_VIF_TYPE);
  iwl_mvm_send_low_latency_cmd(mvm, 1, mvmvif->id);
 }


 iwl_mvm_power_update_mac(mvm);

 ret = iwl_mvm_update_quotas(mvm, 0, ((void*)0));
 if (ret)
  goto out_quota_failed;


 if (vif->p2p && mvm->p2p_device_vif)
  iwl_mvm_mac_ctxt_changed(mvm, mvm->p2p_device_vif, 0, ((void*)0));

 iwl_mvm_bt_coex_vif_change(mvm);


 if (iwl_mvm_phy_ctx_count(mvm) > 1)
  iwl_mvm_teardown_tdls_peers(mvm);

 iwl_mvm_ftm_restart_responder(mvm, vif);

 goto out_unlock;

out_quota_failed:
 iwl_mvm_power_update_mac(mvm);
 mvmvif->ap_ibss_active = 0;
 iwl_mvm_send_rm_bcast_sta(mvm, vif);
 iwl_mvm_rm_mcast_sta(mvm, vif);
out_unbind:
 iwl_mvm_binding_remove_vif(mvm, vif);
out_remove:
 iwl_mvm_mac_ctxt_remove(mvm, vif);
out_unlock:
 mutex_unlock(&mvm->mutex);
 return ret;
}
