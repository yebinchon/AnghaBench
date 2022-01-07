
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {int action; } ;


 int IWL_ERR (struct iwl_mvm*,char*,int ,int) ;
 int MAC_CONTEXT_CMD ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mac_ctx_cmd*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int iwl_mvm_mac_ctxt_send_cmd(struct iwl_mvm *mvm,
         struct iwl_mac_ctx_cmd *cmd)
{
 int ret = iwl_mvm_send_cmd_pdu(mvm, MAC_CONTEXT_CMD, 0,
           sizeof(*cmd), cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send MAC context (action:%d): %d\n",
   le32_to_cpu(cmd->action), ret);
 return ret;
}
