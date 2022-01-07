
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {int uploaded; int probe_resp_data; int bf_data; int * phy_ctxt; int time_event_data; int ap_sta_id; } ;
struct iwl_mvm {int time_event_lock; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_MVM_INVALID_STA ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iwl_mvm_cleanup_iterator(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 mvmvif->uploaded = 0;
 mvmvif->ap_sta_id = IWL_MVM_INVALID_STA;

 spin_lock_bh(&mvm->time_event_lock);
 iwl_mvm_te_clear_data(mvm, &mvmvif->time_event_data);
 spin_unlock_bh(&mvm->time_event_lock);

 mvmvif->phy_ctxt = ((void*)0);
 memset(&mvmvif->bf_data, 0, sizeof(mvmvif->bf_data));
 memset(&mvmvif->probe_resp_data, 0, sizeof(mvmvif->probe_resp_data));
}
