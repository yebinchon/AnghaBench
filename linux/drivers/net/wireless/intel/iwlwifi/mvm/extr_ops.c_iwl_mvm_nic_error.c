
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {TYPE_1__* trans; } ;
struct TYPE_2__ {int status; } ;


 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int STATUS_TRANS_DEAD ;
 int iwl_mvm_dump_nic_error_log (struct iwl_mvm*) ;
 int iwl_mvm_nic_restart (struct iwl_mvm*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwl_mvm_nic_error(struct iwl_op_mode *op_mode)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);

 if (!test_bit(STATUS_TRANS_DEAD, &mvm->trans->status))
  iwl_mvm_dump_nic_error_log(mvm);

 iwl_mvm_nic_restart(mvm, 1);
}
