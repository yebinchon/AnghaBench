
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ hw_status; int main_work; int workqueue; int dev; scalar_t__ mfg_mode; int work_flags; } ;
struct host_cmd_ds_command {scalar_t__ result; int command; } ;
struct cmd_ctrl_node {scalar_t__ wait_q_enabled; int cmd_flag; TYPE_1__* cmd_skb; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int CMD_F_HOSTCMD ;
 int ERROR ;


 scalar_t__ HostCmd_CMD_802_11_HS_CFG_ENH ;
 scalar_t__ HostCmd_CMD_802_11_SCAN ;
 scalar_t__ HostCmd_CMD_802_11_SCAN_EXT ;
 scalar_t__ HostCmd_CMD_FUNC_INIT ;




 scalar_t__ MWIFIEX_HW_STATUS_RESET ;
 int MWIFIEX_IS_CMD_TIMEDOUT ;
 int MWIFIEX_IS_HS_ENABLING ;
 int MWIFIEX_IS_SUSPENDED ;
 int MWIFIEX_SURPRISE_REMOVED ;
 int cpu_to_le16 (scalar_t__) ;
 int dev_dbg (int ,char*) ;
 int mwifiex_cmd_host_cmd (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 struct cmd_ctrl_node* mwifiex_get_cmd_node (struct mwifiex_adapter*) ;
 int mwifiex_init_cmd_node (struct mwifiex_private*,struct cmd_ctrl_node*,scalar_t__,void*,int) ;
 int mwifiex_insert_cmd_to_free_q (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int mwifiex_insert_cmd_to_pending_q (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int mwifiex_queue_scan_cmd (struct mwifiex_private*,struct cmd_ctrl_node*) ;
 int mwifiex_sta_prepare_cmd (struct mwifiex_private*,scalar_t__,scalar_t__,int ,void*,struct host_cmd_ds_command*) ;
 int mwifiex_uap_prepare_cmd (struct mwifiex_private*,scalar_t__,scalar_t__,int ,void*,struct host_cmd_ds_command*) ;
 int mwifiex_wait_queue_complete (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 int skb_put_zero (TYPE_1__*,int) ;
 scalar_t__ test_bit (int ,int *) ;

int mwifiex_send_cmd(struct mwifiex_private *priv, u16 cmd_no,
       u16 cmd_action, u32 cmd_oid, void *data_buf, bool sync)
{
 int ret;
 struct mwifiex_adapter *adapter = priv->adapter;
 struct cmd_ctrl_node *cmd_node;
 struct host_cmd_ds_command *cmd_ptr;

 if (!adapter) {
  pr_err("PREP_CMD: adapter is NULL\n");
  return -1;
 }

 if (test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: device in suspended state\n");
  return -1;
 }

 if (test_bit(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags) &&
     cmd_no != HostCmd_CMD_802_11_HS_CFG_ENH) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: host entering sleep state\n");
  return -1;
 }

 if (test_bit(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags)) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: card is removed\n");
  return -1;
 }

 if (test_bit(MWIFIEX_IS_CMD_TIMEDOUT, &adapter->work_flags)) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: FW is in bad state\n");
  return -1;
 }

 if (adapter->hw_status == MWIFIEX_HW_STATUS_RESET) {
  if (cmd_no != HostCmd_CMD_FUNC_INIT) {
   mwifiex_dbg(adapter, ERROR,
        "PREP_CMD: FW in reset state\n");
   return -1;
  }
 }



 if (adapter->mfg_mode && cmd_no) {
  dev_dbg(adapter->dev, "Ignoring commands in manufacturing mode\n");
  return -1;
 }



 cmd_node = mwifiex_get_cmd_node(adapter);

 if (!cmd_node) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: no free cmd node\n");
  return -1;
 }


 mwifiex_init_cmd_node(priv, cmd_node, cmd_no, data_buf, sync);

 if (!cmd_node->cmd_skb) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: no free cmd buf\n");
  return -1;
 }

 skb_put_zero(cmd_node->cmd_skb, sizeof(struct host_cmd_ds_command));

 cmd_ptr = (struct host_cmd_ds_command *) (cmd_node->cmd_skb->data);
 cmd_ptr->command = cpu_to_le16(cmd_no);
 cmd_ptr->result = 0;


 if (cmd_no) {
  switch (cmd_no) {
  case 128:
  case 131:
  case 130:
  case 129:
  case 132:
  case 133:
   ret = mwifiex_uap_prepare_cmd(priv, cmd_no, cmd_action,
            cmd_oid, data_buf,
            cmd_ptr);
   break;
  default:
   ret = mwifiex_sta_prepare_cmd(priv, cmd_no, cmd_action,
            cmd_oid, data_buf,
            cmd_ptr);
   break;
  }
 } else {
  ret = mwifiex_cmd_host_cmd(priv, cmd_ptr, data_buf);
  cmd_node->cmd_flag |= CMD_F_HOSTCMD;
 }


 if (ret) {
  mwifiex_dbg(adapter, ERROR,
       "PREP_CMD: cmd %#x preparation failed\n",
   cmd_no);
  mwifiex_insert_cmd_to_free_q(adapter, cmd_node);
  return -1;
 }


 if (cmd_no == HostCmd_CMD_802_11_SCAN ||
     cmd_no == HostCmd_CMD_802_11_SCAN_EXT) {
  mwifiex_queue_scan_cmd(priv, cmd_node);
 } else {
  mwifiex_insert_cmd_to_pending_q(adapter, cmd_node);
  queue_work(adapter->workqueue, &adapter->main_work);
  if (cmd_node->wait_q_enabled)
   ret = mwifiex_wait_queue_complete(adapter, cmd_node);
 }

 return ret;
}
