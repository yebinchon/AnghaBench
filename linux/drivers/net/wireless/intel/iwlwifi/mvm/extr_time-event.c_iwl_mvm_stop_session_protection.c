
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_mvm_time_event_data {scalar_t__ id; } ;
struct iwl_mvm_vif {struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int time_event_lock; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_DEBUG_TE (struct iwl_mvm*,char*,scalar_t__) ;
 scalar_t__ TE_BSS_STA_AGGRESSIVE_ASSOC ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_mvm_stop_session_protection(struct iwl_mvm *mvm,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
 u32 id;

 lockdep_assert_held(&mvm->mutex);

 spin_lock_bh(&mvm->time_event_lock);
 id = te_data->id;
 spin_unlock_bh(&mvm->time_event_lock);

 if (id != TE_BSS_STA_AGGRESSIVE_ASSOC) {
  IWL_DEBUG_TE(mvm,
        "don't remove TE with id=%u (not session protection)\n",
        id);
  return;
 }

 iwl_mvm_remove_time_event(mvm, mvmvif, te_data);
}
