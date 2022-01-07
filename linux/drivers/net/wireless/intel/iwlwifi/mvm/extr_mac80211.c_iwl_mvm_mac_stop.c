
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int async_handlers_wk; int mutex; int fwrt; int scan_timeout_dwork; int cs_tx_unblock_dwork; int status; int add_stream_wk; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_STATUS_FIRMWARE_RUNNING ;
 int __iwl_mvm_mac_stop (struct iwl_mvm*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int flush_work (int *) ;
 int iwl_fw_free_dump_desc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_mac_stop(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 flush_work(&mvm->async_handlers_wk);
 flush_work(&mvm->add_stream_wk);
 clear_bit(IWL_MVM_STATUS_FIRMWARE_RUNNING, &mvm->status);

 cancel_delayed_work_sync(&mvm->cs_tx_unblock_dwork);
 cancel_delayed_work_sync(&mvm->scan_timeout_dwork);
 iwl_fw_free_dump_desc(&mvm->fwrt);

 mutex_lock(&mvm->mutex);
 __iwl_mvm_mac_stop(mvm);
 mutex_unlock(&mvm->mutex);





 cancel_work_sync(&mvm->async_handlers_wk);
}
