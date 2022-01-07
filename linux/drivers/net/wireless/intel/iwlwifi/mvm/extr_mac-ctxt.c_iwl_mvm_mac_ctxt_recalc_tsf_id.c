
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {scalar_t__ tsf_id; } ;
struct iwl_mvm_mac_iface_iterator_data {scalar_t__ preferred_tsf; int available_tsf_ids; struct ieee80211_vif* vif; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_vif {int dummy; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 scalar_t__ NUM_TSF_IDS ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_mac_iface_iterator_data*) ;
 int iwl_mvm_mac_tsf_id_iter ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int test_bit (scalar_t__,int ) ;

void iwl_mvm_mac_ctxt_recalc_tsf_id(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_mac_iface_iterator_data data = {
  .mvm = mvm,
  .vif = vif,
  .available_tsf_ids = { (1 << NUM_TSF_IDS) - 1 },

  .preferred_tsf = NUM_TSF_IDS,
 };

 ieee80211_iterate_active_interfaces_atomic(
  mvm->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  iwl_mvm_mac_tsf_id_iter, &data);

 if (data.preferred_tsf != NUM_TSF_IDS)
  mvmvif->tsf_id = data.preferred_tsf;
 else if (!test_bit(mvmvif->tsf_id, data.available_tsf_ids))
  mvmvif->tsf_id = find_first_bit(data.available_tsf_ids,
      NUM_TSF_IDS);
}
