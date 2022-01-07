
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_probe_resp_data {int dummy; } ;
struct iwl_mvm_vif {size_t id; int * phy_ctxt; int mcast_sta; int probe_resp_data; } ;
struct iwl_mvm {int monitor_on; int mutex; int * vif_id_to_mac; scalar_t__ vif_count; int * p2p_device_vif; scalar_t__ noa_duration; struct ieee80211_vif* noa_vif; int ftm_resp_stats; struct iwl_mvm_vif* bf_allowed_vif; } ;
struct TYPE_2__ {scalar_t__ ftm_responder; } ;
struct ieee80211_vif {scalar_t__ type; int driver_flags; TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;


 int IEEE80211_VIF_BEACON_FILTER ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_dealloc_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_phy_ctxt_unref (struct iwl_mvm*,int *) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_prepare_mac_removal (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_rm_p2p_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_tcm_rm_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_vif_dbgfs_clean (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int kfree_rcu (struct iwl_probe_resp_data*,int ) ;
 int lockdep_is_held (int *) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iwl_probe_resp_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;

__attribute__((used)) static void iwl_mvm_mac_remove_interface(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_probe_resp_data *probe_data;

 iwl_mvm_prepare_mac_removal(mvm, vif);

 if (!(vif->type == NL80211_IFTYPE_AP ||
       vif->type == NL80211_IFTYPE_ADHOC))
  iwl_mvm_tcm_rm_vif(mvm, vif);

 mutex_lock(&mvm->mutex);

 probe_data = rcu_dereference_protected(mvmvif->probe_resp_data,
            lockdep_is_held(&mvm->mutex));
 RCU_INIT_POINTER(mvmvif->probe_resp_data, ((void*)0));
 if (probe_data)
  kfree_rcu(probe_data, rcu_head);

 if (mvm->bf_allowed_vif == mvmvif) {
  mvm->bf_allowed_vif = ((void*)0);
  vif->driver_flags &= ~(IEEE80211_VIF_BEACON_FILTER |
           IEEE80211_VIF_SUPPORTS_CQM_RSSI);
 }

 if (vif->bss_conf.ftm_responder)
  memset(&mvm->ftm_resp_stats, 0, sizeof(mvm->ftm_resp_stats));

 iwl_mvm_vif_dbgfs_clean(mvm, vif);





 if (vif->type == NL80211_IFTYPE_AP ||
     vif->type == NL80211_IFTYPE_ADHOC) {






  iwl_mvm_dealloc_int_sta(mvm, &mvmvif->mcast_sta);
  iwl_mvm_dealloc_bcast_sta(mvm, vif);
  goto out_release;
 }

 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
  mvm->p2p_device_vif = ((void*)0);
  iwl_mvm_rm_p2p_bcast_sta(mvm, vif);
  iwl_mvm_binding_remove_vif(mvm, vif);
  iwl_mvm_phy_ctxt_unref(mvm, mvmvif->phy_ctxt);
  mvmvif->phy_ctxt = ((void*)0);
 }

 if (mvm->vif_count && vif->type != NL80211_IFTYPE_P2P_DEVICE)
  mvm->vif_count--;

 iwl_mvm_power_update_mac(mvm);
 iwl_mvm_mac_ctxt_remove(mvm, vif);

 RCU_INIT_POINTER(mvm->vif_id_to_mac[mvmvif->id], ((void*)0));

 if (vif->type == NL80211_IFTYPE_MONITOR)
  mvm->monitor_on = 0;

out_release:
 mutex_unlock(&mvm->mutex);
}
