
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int status; int fwrt; int mutex; } ;


 int IWL_FW_INI_TIME_POINT_PERIODIC ;
 int IWL_FW_INI_TIME_POINT_POST_INIT ;
 int IWL_MVM_STATUS_HW_RESTART_REQUESTED ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int clear_bit (int ,int *) ;
 int iwl_dbg_tlv_time_point (int *,int ,int *) ;
 int iwl_mvm_restart_cleanup (struct iwl_mvm*) ;
 int iwl_mvm_up (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int __iwl_mvm_mac_start(struct iwl_mvm *mvm)
{
 int ret;

 lockdep_assert_held(&mvm->mutex);

 if (test_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status)) {




  set_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
  clear_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status);

  iwl_mvm_restart_cleanup(mvm);
 }
 ret = iwl_mvm_up(mvm);

 iwl_dbg_tlv_time_point(&mvm->fwrt, IWL_FW_INI_TIME_POINT_POST_INIT,
          ((void*)0));
 iwl_dbg_tlv_time_point(&mvm->fwrt, IWL_FW_INI_TIME_POINT_PERIODIC,
          ((void*)0));

 if (ret && test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {




  clear_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
 }

 return ret;
}
