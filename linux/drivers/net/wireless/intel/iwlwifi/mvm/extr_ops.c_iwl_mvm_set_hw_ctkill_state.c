
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int status; } ;


 int IWL_MVM_STATUS_HW_CTKILL ;
 int clear_bit (int ,int *) ;
 int iwl_mvm_set_rfkill_state (struct iwl_mvm*) ;
 int set_bit (int ,int *) ;

void iwl_mvm_set_hw_ctkill_state(struct iwl_mvm *mvm, bool state)
{
 if (state)
  set_bit(IWL_MVM_STATUS_HW_CTKILL, &mvm->status);
 else
  clear_bit(IWL_MVM_STATUS_HW_CTKILL, &mvm->status);

 iwl_mvm_set_rfkill_state(mvm);
}
