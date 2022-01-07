
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_txq {TYPE_2__* entries; int write_ptr; int read_ptr; } ;
struct iwl_trans_pcie {size_t cmd_queue; int wait_command_queue; struct iwl_txq** txq; } ;
struct iwl_trans {int status; } ;
struct iwl_host_cmd {int flags; int * resp_pkt; int id; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ meta; } ;


 int CMD_SEND_IN_RFKILL ;
 int CMD_WANT_SKB ;
 int EIO ;
 int ERFKILL ;
 int ETIMEDOUT ;
 int HOST_COMPLETE_TIMEOUT ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,char const*) ;
 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*) ;
 int IWL_ERR (struct iwl_trans*,char*,char const*,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_FW_ERROR ;
 int STATUS_RFKILL_OPMODE ;
 int STATUS_SYNC_HCMD_ACTIVE ;
 scalar_t__ WARN (int ,char*,char const*) ;
 int clear_bit (int ,int *) ;
 int dump_stack () ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 char* iwl_get_cmd_string (struct iwl_trans*,int ) ;
 int iwl_pcie_gen2_enqueue_hcmd (struct iwl_trans*,struct iwl_host_cmd*) ;
 int iwl_trans_pcie_sync_nmi (struct iwl_trans*) ;
 int jiffies_to_msecs (int ) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int iwl_pcie_gen2_send_hcmd_sync(struct iwl_trans *trans,
     struct iwl_host_cmd *cmd)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 const char *cmd_str = iwl_get_cmd_string(trans, cmd->id);
 struct iwl_txq *txq = trans_pcie->txq[trans_pcie->cmd_queue];
 int cmd_idx;
 int ret;

 IWL_DEBUG_INFO(trans, "Attempting to send sync command %s\n", cmd_str);

 if (WARN(test_and_set_bit(STATUS_SYNC_HCMD_ACTIVE,
      &trans->status),
   "Command %s: a command is already active!\n", cmd_str))
  return -EIO;

 IWL_DEBUG_INFO(trans, "Setting HCMD_ACTIVE for command %s\n", cmd_str);

 cmd_idx = iwl_pcie_gen2_enqueue_hcmd(trans, cmd);
 if (cmd_idx < 0) {
  ret = cmd_idx;
  clear_bit(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
  IWL_ERR(trans, "Error sending %s: enqueue_hcmd failed: %d\n",
   cmd_str, ret);
  return ret;
 }

 ret = wait_event_timeout(trans_pcie->wait_command_queue,
     !test_bit(STATUS_SYNC_HCMD_ACTIVE,
        &trans->status),
     HOST_COMPLETE_TIMEOUT);
 if (!ret) {
  IWL_ERR(trans, "Error sending %s: time out after %dms.\n",
   cmd_str, jiffies_to_msecs(HOST_COMPLETE_TIMEOUT));

  IWL_ERR(trans, "Current CMD queue read_ptr %d write_ptr %d\n",
   txq->read_ptr, txq->write_ptr);

  clear_bit(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
  IWL_DEBUG_INFO(trans, "Clearing HCMD_ACTIVE for command %s\n",
          cmd_str);
  ret = -ETIMEDOUT;

  iwl_trans_pcie_sync_nmi(trans);
  goto cancel;
 }

 if (test_bit(STATUS_FW_ERROR, &trans->status)) {
  IWL_ERR(trans, "FW error in SYNC CMD %s\n", cmd_str);
  dump_stack();
  ret = -EIO;
  goto cancel;
 }

 if (!(cmd->flags & CMD_SEND_IN_RFKILL) &&
     test_bit(STATUS_RFKILL_OPMODE, &trans->status)) {
  IWL_DEBUG_RF_KILL(trans, "RFKILL in SYNC CMD... no rsp\n");
  ret = -ERFKILL;
  goto cancel;
 }

 if ((cmd->flags & CMD_WANT_SKB) && !cmd->resp_pkt) {
  IWL_ERR(trans, "Error: Response NULL in '%s'\n", cmd_str);
  ret = -EIO;
  goto cancel;
 }

 return 0;

cancel:
 if (cmd->flags & CMD_WANT_SKB) {






  txq->entries[cmd_idx].meta.flags &= ~CMD_WANT_SKB;
 }

 if (cmd->resp_pkt) {
  iwl_free_resp(cmd);
  cmd->resp_pkt = ((void*)0);
 }

 return ret;
}
