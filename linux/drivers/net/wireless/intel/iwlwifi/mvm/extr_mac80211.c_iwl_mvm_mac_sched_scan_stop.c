
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int scan_status; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_SCAN_SCHED ;
 int iwl_mvm_scan_stop (struct iwl_mvm*,int,int) ;
 int iwl_mvm_wait_for_async_handlers (struct iwl_mvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_sched_scan_stop(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 mutex_lock(&mvm->mutex);
 if (!(mvm->scan_status & IWL_MVM_SCAN_SCHED)) {
  mutex_unlock(&mvm->mutex);
  return 0;
 }

 ret = iwl_mvm_scan_stop(mvm, IWL_MVM_SCAN_SCHED, 0);
 mutex_unlock(&mvm->mutex);
 iwl_mvm_wait_for_async_handlers(mvm);

 return ret;
}
