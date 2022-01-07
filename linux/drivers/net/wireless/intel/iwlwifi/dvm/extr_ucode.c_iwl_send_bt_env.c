
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct iwl_priv {int dummy; } ;
struct iwl_bt_coex_prot_env_cmd {void* type; void* action; } ;
typedef int env_cmd ;


 int IWL_ERR (struct iwl_priv*,char*) ;
 int REPLY_BT_COEX_PROT_ENV ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_bt_coex_prot_env_cmd*) ;

int iwl_send_bt_env(struct iwl_priv *priv, u8 action, u8 type)
{
 struct iwl_bt_coex_prot_env_cmd env_cmd;
 int ret;

 env_cmd.action = action;
 env_cmd.type = type;
 ret = iwl_dvm_send_cmd_pdu(priv,
          REPLY_BT_COEX_PROT_ENV, 0,
          sizeof(env_cmd), &env_cmd);
 if (ret)
  IWL_ERR(priv, "failed to send BT env command\n");
 return ret;
}
