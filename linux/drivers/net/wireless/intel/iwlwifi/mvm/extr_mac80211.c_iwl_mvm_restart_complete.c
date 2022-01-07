
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; int status; } ;


 int ERROR_RECOVERY_END_OF_RECOVERY ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int clear_bit (int ,int *) ;
 int iwl_mvm_send_recovery_cmd (struct iwl_mvm*,int ) ;
 int iwl_mvm_teardown_tdls_peers (struct iwl_mvm*) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_restart_complete(struct iwl_mvm *mvm)
{
 int ret;

 mutex_lock(&mvm->mutex);

 clear_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);

 ret = iwl_mvm_update_quotas(mvm, 1, ((void*)0));
 if (ret)
  IWL_ERR(mvm, "Failed to update quotas after restart (%d)\n",
   ret);

 iwl_mvm_send_recovery_cmd(mvm, ERROR_RECOVERY_END_OF_RECOVERY);





 iwl_mvm_teardown_tdls_peers(mvm);

 mutex_unlock(&mvm->mutex);
}
