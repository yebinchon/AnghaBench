
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; int trans; } ;
struct ieee80211_sta {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int iwl_mvm_flush_sta_tids (struct iwl_mvm*,int,int,int ) ;
 int iwl_mvm_flush_tx_path (struct iwl_mvm*,int,int ) ;
 int iwl_mvm_flushable_queues (struct iwl_mvm*) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_wait_sta_queues_empty (struct iwl_mvm*,int ) ;
 int iwl_trans_wait_tx_queues_empty (int ,int) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void iwl_mvm_flush_no_vif(struct iwl_mvm *mvm, u32 queues, bool drop)
{
 int i;

 if (!iwl_mvm_has_new_tx_api(mvm)) {
  if (drop) {
   mutex_lock(&mvm->mutex);
   iwl_mvm_flush_tx_path(mvm,
    iwl_mvm_flushable_queues(mvm) & queues, 0);
   mutex_unlock(&mvm->mutex);
  } else {
   iwl_trans_wait_tx_queues_empty(mvm->trans, queues);
  }
  return;
 }

 mutex_lock(&mvm->mutex);
 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  struct ieee80211_sta *sta;

  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[i],
      lockdep_is_held(&mvm->mutex));
  if (IS_ERR_OR_NULL(sta))
   continue;

  if (drop)
   iwl_mvm_flush_sta_tids(mvm, i, 0xFF, 0);
  else
   iwl_mvm_wait_sta_queues_empty(mvm,
     iwl_mvm_sta_from_mac80211(sta));
 }
 mutex_unlock(&mvm->mutex);
}
