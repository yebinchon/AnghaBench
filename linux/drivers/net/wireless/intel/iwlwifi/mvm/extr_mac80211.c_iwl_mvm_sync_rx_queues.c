
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_internal_rxq_notif {int sync; int type; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_hw {int dummy; } ;
typedef int data ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_RXQ_EMPTY ;
 int iwl_mvm_sync_rx_queues_internal (struct iwl_mvm*,struct iwl_mvm_internal_rxq_notif*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_sync_rx_queues(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_internal_rxq_notif data = {
  .type = IWL_MVM_RXQ_EMPTY,
  .sync = 1,
 };

 mutex_lock(&mvm->mutex);
 iwl_mvm_sync_rx_queues_internal(mvm, &data, sizeof(data));
 mutex_unlock(&mvm->mutex);
}
