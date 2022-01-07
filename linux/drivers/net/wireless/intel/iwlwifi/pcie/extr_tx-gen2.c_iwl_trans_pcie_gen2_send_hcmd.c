
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int status; } ;
struct iwl_host_cmd {int flags; int id; } ;


 int CMD_ASYNC ;
 int CMD_SEND_IN_RFKILL ;
 int CMD_WANT_SKB ;
 int EINVAL ;
 int ERFKILL ;
 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*,int ) ;
 int IWL_ERR (struct iwl_trans*,char*,int ,int) ;
 int STATUS_RFKILL_OPMODE ;
 scalar_t__ WARN_ON (int) ;
 int iwl_get_cmd_string (struct iwl_trans*,int ) ;
 int iwl_pcie_gen2_enqueue_hcmd (struct iwl_trans*,struct iwl_host_cmd*) ;
 int iwl_pcie_gen2_send_hcmd_sync (struct iwl_trans*,struct iwl_host_cmd*) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_trans_pcie_gen2_send_hcmd(struct iwl_trans *trans,
      struct iwl_host_cmd *cmd)
{
 if (!(cmd->flags & CMD_SEND_IN_RFKILL) &&
     test_bit(STATUS_RFKILL_OPMODE, &trans->status)) {
  IWL_DEBUG_RF_KILL(trans, "Dropping CMD 0x%x: RF KILL\n",
      cmd->id);
  return -ERFKILL;
 }

 if (cmd->flags & CMD_ASYNC) {
  int ret;


  if (WARN_ON(cmd->flags & CMD_WANT_SKB))
   return -EINVAL;

  ret = iwl_pcie_gen2_enqueue_hcmd(trans, cmd);
  if (ret < 0) {
   IWL_ERR(trans,
    "Error sending %s: enqueue_hcmd failed: %d\n",
    iwl_get_cmd_string(trans, cmd->id), ret);
   return ret;
  }
  return 0;
 }

 return iwl_pcie_gen2_send_hcmd_sync(trans, cmd);
}
