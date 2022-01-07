
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int WARN_ON (int) ;
 int iwl_mvm_nic_restart (struct iwl_mvm*,int) ;

__attribute__((used)) static void iwl_mvm_cmd_queue_full(struct iwl_op_mode *op_mode)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);

 WARN_ON(1);
 iwl_mvm_nic_restart(mvm, 1);
}
