
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int status; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_STATUS_HW_CTKILL ;
 int iwl_mvm_set_hw_ctkill_state (struct iwl_mvm*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwl_mvm_exit_ctkill(struct iwl_mvm *mvm)
{
 if (!test_bit(IWL_MVM_STATUS_HW_CTKILL, &mvm->status))
  return;

 IWL_ERR(mvm, "Exit CT Kill\n");
 iwl_mvm_set_hw_ctkill_state(mvm, 0);
}
