
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int fwrt; int trans; int status; int mutex; } ;


 int IWL_MVM_STATUS_FIRMWARE_RUNNING ;
 int clear_bit (int ,int *) ;
 int iwl_free_fw_paging (int *) ;
 int iwl_fw_cancel_timestamp (int *) ;
 int iwl_fw_dbg_stop_sync (int *) ;
 int iwl_fw_dump_conf_clear (int *) ;
 int iwl_trans_stop_device (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void iwl_mvm_stop_device(struct iwl_mvm *mvm)
{
 lockdep_assert_held(&mvm->mutex);
 iwl_fw_cancel_timestamp(&mvm->fwrt);
 clear_bit(IWL_MVM_STATUS_FIRMWARE_RUNNING, &mvm->status);
 iwl_fw_dbg_stop_sync(&mvm->fwrt);
 iwl_trans_stop_device(mvm->trans);
 iwl_free_fw_paging(&mvm->fwrt);
 iwl_fw_dump_conf_clear(&mvm->fwrt);
}
