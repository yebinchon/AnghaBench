
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mwifiex_adapter {scalar_t__ ps_state; int cmd_pending; int cmd_pending_q_lock; int cmd_pending_q; } ;
struct host_cmd_ds_802_11_ps_mode_enh {int action; } ;
struct TYPE_4__ {struct host_cmd_ds_802_11_ps_mode_enh psmode_enh; } ;
struct host_cmd_ds_command {TYPE_2__ params; int command; } ;
struct cmd_ctrl_node {int list; TYPE_1__* cmd_skb; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int CMD ;
 scalar_t__ DIS_AUTO_PS ;
 scalar_t__ DIS_PS ;
 int ERROR ;
 scalar_t__ HostCmd_CMD_802_11_PS_MODE_ENH ;
 scalar_t__ PS_STATE_AWAKE ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
mwifiex_insert_cmd_to_pending_q(struct mwifiex_adapter *adapter,
    struct cmd_ctrl_node *cmd_node)
{
 struct host_cmd_ds_command *host_cmd = ((void*)0);
 u16 command;
 bool add_tail = 1;

 host_cmd = (struct host_cmd_ds_command *) (cmd_node->cmd_skb->data);
 if (!host_cmd) {
  mwifiex_dbg(adapter, ERROR, "QUEUE_CMD: host_cmd is NULL\n");
  return;
 }

 command = le16_to_cpu(host_cmd->command);


 if (command == HostCmd_CMD_802_11_PS_MODE_ENH) {
  struct host_cmd_ds_802_11_ps_mode_enh *pm =
      &host_cmd->params.psmode_enh;
  if ((le16_to_cpu(pm->action) == DIS_PS) ||
      (le16_to_cpu(pm->action) == DIS_AUTO_PS)) {
   if (adapter->ps_state != PS_STATE_AWAKE)
    add_tail = 0;
  }
 }

 spin_lock_bh(&adapter->cmd_pending_q_lock);
 if (add_tail)
  list_add_tail(&cmd_node->list, &adapter->cmd_pending_q);
 else
  list_add(&cmd_node->list, &adapter->cmd_pending_q);
 spin_unlock_bh(&adapter->cmd_pending_q_lock);

 atomic_inc(&adapter->cmd_pending);
 mwifiex_dbg(adapter, CMD,
      "cmd: QUEUE_CMD: cmd=%#x, cmd_pending=%d\n",
  command, atomic_read(&adapter->cmd_pending));
}
