
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int trans; } ;
struct iwl_device_cmd {int dummy; } ;


 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int iwl_trans_block_txq_ptrs (int ,int) ;

__attribute__((used)) static void iwl_mvm_async_cb(struct iwl_op_mode *op_mode,
        const struct iwl_device_cmd *cmd)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);





 iwl_trans_block_txq_ptrs(mvm->trans, 0);
}
