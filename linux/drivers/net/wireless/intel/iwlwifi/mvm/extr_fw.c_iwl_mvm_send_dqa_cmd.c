
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_dqa_enable_cmd {int cmd_queue; } ;
typedef int dqa_cmd ;


 int DATA_PATH_GROUP ;
 int DQA_ENABLE_CMD ;
 int IWL_DEBUG_FW (struct iwl_mvm*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_MVM_DQA_CMD_QUEUE ;
 int cpu_to_le32 (int ) ;
 int iwl_cmd_id (int ,int ,int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_dqa_enable_cmd*) ;

__attribute__((used)) static int iwl_mvm_send_dqa_cmd(struct iwl_mvm *mvm)
{
 struct iwl_dqa_enable_cmd dqa_cmd = {
  .cmd_queue = cpu_to_le32(IWL_MVM_DQA_CMD_QUEUE),
 };
 u32 cmd_id = iwl_cmd_id(DQA_ENABLE_CMD, DATA_PATH_GROUP, 0);
 int ret;

 ret = iwl_mvm_send_cmd_pdu(mvm, cmd_id, 0, sizeof(dqa_cmd), &dqa_cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send DQA enabling command: %d\n", ret);
 else
  IWL_DEBUG_FW(mvm, "Working in DQA mode\n");

 return ret;
}
