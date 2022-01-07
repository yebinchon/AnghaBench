
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct iwl_mvm_ctdp_cmd {int window_size; int budget; int operation; } ;
struct TYPE_2__ {size_t cur_state; } ;
struct iwl_mvm {TYPE_1__ cooling_dev; int mutex; } ;
typedef int cmd ;





 int CTDP_CONFIG_CMD ;
 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int PHY_OPS_GROUP ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (size_t) ;
 size_t* iwl_mvm_cdev_budgets ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int,struct iwl_mvm_ctdp_cmd*,size_t*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_ctdp_command(struct iwl_mvm *mvm, u32 op, u32 state)
{
 struct iwl_mvm_ctdp_cmd cmd = {
  .operation = cpu_to_le32(op),
  .budget = cpu_to_le32(iwl_mvm_cdev_budgets[state]),
  .window_size = 0,
 };
 int ret;
 u32 status;

 lockdep_assert_held(&mvm->mutex);

 status = 0;
 ret = iwl_mvm_send_cmd_pdu_status(mvm, WIDE_ID(PHY_OPS_GROUP,
             CTDP_CONFIG_CMD),
       sizeof(cmd), &cmd, &status);

 if (ret) {
  IWL_ERR(mvm, "cTDP command failed (err=%d)\n", ret);
  return ret;
 }

 switch (op) {
 case 129:



  break;
 case 130:
  IWL_DEBUG_TEMP(mvm, "cTDP avg energy in mWatt = %d\n", status);






  return status;
 case 128:
  IWL_DEBUG_TEMP(mvm, "cTDP stopped successfully\n");
  break;
 }

 return 0;
}
