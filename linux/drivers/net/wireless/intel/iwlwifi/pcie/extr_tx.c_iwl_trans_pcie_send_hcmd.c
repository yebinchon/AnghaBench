
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int status; } ;
struct iwl_host_cmd {int flags; int id; } ;


 int CMD_ASYNC ;
 int CMD_SEND_IN_RFKILL ;
 int ENODEV ;
 int ERFKILL ;
 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*,int ) ;
 int STATUS_RFKILL_OPMODE ;
 int STATUS_TRANS_DEAD ;
 int iwl_pcie_send_hcmd_async (struct iwl_trans*,struct iwl_host_cmd*) ;
 int iwl_pcie_send_hcmd_sync (struct iwl_trans*,struct iwl_host_cmd*) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_trans_pcie_send_hcmd(struct iwl_trans *trans, struct iwl_host_cmd *cmd)
{

 if (test_bit(STATUS_TRANS_DEAD, &trans->status))
  return -ENODEV;

 if (!(cmd->flags & CMD_SEND_IN_RFKILL) &&
     test_bit(STATUS_RFKILL_OPMODE, &trans->status)) {
  IWL_DEBUG_RF_KILL(trans, "Dropping CMD 0x%x: RF KILL\n",
      cmd->id);
  return -ERFKILL;
 }

 if (cmd->flags & CMD_ASYNC)
  return iwl_pcie_send_hcmd_async(trans, cmd);


 return iwl_pcie_send_hcmd_sync(trans, cmd);
}
