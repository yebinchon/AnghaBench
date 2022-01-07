
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u8 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct TYPE_14__ {int last_cmd_index; int * last_cmd_act; scalar_t__* last_cmd_id; int num_cmd_host_to_card_failure; } ;
struct TYPE_13__ {int status; } ;
struct TYPE_12__ {int (* host_to_card ) (struct mwifiex_adapter*,int ,TYPE_5__*,int *) ;} ;
struct mwifiex_adapter {scalar_t__ hw_status; scalar_t__ iface_type; int cmd_sent; int cmd_timer; TYPE_4__ dbg; int mwifiex_cmd_lock; struct cmd_ctrl_node* curr_cmd; TYPE_3__ cmd_wait_q; int intf_hdr_len; TYPE_2__ if_ops; int seq_num; int main_work; int workqueue; } ;
struct host_cmd_ds_command {scalar_t__ size; scalar_t__ command; scalar_t__ seq_num; } ;
struct cmd_ctrl_node {scalar_t__ wait_q_enabled; TYPE_5__* cmd_skb; TYPE_1__* priv; scalar_t__ cmd_no; } ;
struct TYPE_15__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_11__ {int bss_type; int bss_num; } ;


 int CMD ;
 int CMD_D ;
 int DBG_CMD_NUM ;
 int EBUSY ;
 int ERROR ;
 scalar_t__ HostCmd_CMD_FUNC_INIT ;
 scalar_t__ HostCmd_CMD_FUNC_SHUTDOWN ;
 scalar_t__ HostCmd_CMD_FW_DUMP_EVENT ;
 scalar_t__ HostCmd_CMD_ID_MASK ;
 int HostCmd_SET_SEQ_NO_BSS_INFO (int ,int ,int ) ;
 scalar_t__ MWIFIEX_HW_STATUS_RESET ;
 int MWIFIEX_TIMER_10S ;
 int MWIFIEX_TYPE_CMD ;
 int MWIFIEX_TYPE_LEN ;
 scalar_t__ MWIFIEX_USB ;
 int MWIFIEX_USB_EP_CMD_EVENT ;
 int MWIFIEX_USB_TYPE_CMD ;
 int S_DS_GEN ;
 scalar_t__ cpu_to_le16 (int ) ;
 int get_unaligned_le16 (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_dbg_dump (struct mwifiex_adapter*,int ,char*,struct host_cmd_ds_command*,scalar_t__) ;
 int mwifiex_recycle_cmd_node (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int put_unaligned_le32 (int ,scalar_t__) ;
 int queue_work (int ,int *) ;
 int skb_pull (TYPE_5__*,int ) ;
 int skb_push (TYPE_5__*,int ) ;
 int skb_put (TYPE_5__*,scalar_t__) ;
 int skb_trim (TYPE_5__*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct mwifiex_adapter*,int ,TYPE_5__*,int *) ;
 int stub2 (struct mwifiex_adapter*,int ,TYPE_5__*,int *) ;

__attribute__((used)) static int mwifiex_dnld_cmd_to_fw(struct mwifiex_private *priv,
      struct cmd_ctrl_node *cmd_node)
{

 struct mwifiex_adapter *adapter = priv->adapter;
 int ret;
 struct host_cmd_ds_command *host_cmd;
 uint16_t cmd_code;
 uint16_t cmd_size;

 if (!adapter || !cmd_node)
  return -1;

 host_cmd = (struct host_cmd_ds_command *) (cmd_node->cmd_skb->data);


 if (host_cmd == ((void*)0) || host_cmd->size == 0) {
  mwifiex_dbg(adapter, ERROR,
       "DNLD_CMD: host_cmd is null\t"
       "or cmd size is 0, not sending\n");
  if (cmd_node->wait_q_enabled)
   adapter->cmd_wait_q.status = -1;
  mwifiex_recycle_cmd_node(adapter, cmd_node);
  return -1;
 }

 cmd_code = le16_to_cpu(host_cmd->command);
 cmd_node->cmd_no = cmd_code;
 cmd_size = le16_to_cpu(host_cmd->size);

 if (adapter->hw_status == MWIFIEX_HW_STATUS_RESET &&
     cmd_code != HostCmd_CMD_FUNC_SHUTDOWN &&
     cmd_code != HostCmd_CMD_FUNC_INIT) {
  mwifiex_dbg(adapter, ERROR,
       "DNLD_CMD: FW in reset state, ignore cmd %#x\n",
   cmd_code);
  mwifiex_recycle_cmd_node(adapter, cmd_node);
  queue_work(adapter->workqueue, &adapter->main_work);
  return -1;
 }


 adapter->seq_num++;
 host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
     (adapter->seq_num,
      cmd_node->priv->bss_num,
      cmd_node->priv->bss_type));

 spin_lock_bh(&adapter->mwifiex_cmd_lock);
 adapter->curr_cmd = cmd_node;
 spin_unlock_bh(&adapter->mwifiex_cmd_lock);


 if (cmd_node->cmd_skb->len > cmd_size)




  skb_trim(cmd_node->cmd_skb, cmd_size);
 else if (cmd_node->cmd_skb->len < cmd_size)





  skb_put(cmd_node->cmd_skb, cmd_size - cmd_node->cmd_skb->len);

 mwifiex_dbg(adapter, CMD,
      "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
      cmd_code,
      get_unaligned_le16((u8 *)host_cmd + S_DS_GEN),
      cmd_size, le16_to_cpu(host_cmd->seq_num));
 mwifiex_dbg_dump(adapter, CMD_D, "cmd buffer:", host_cmd, cmd_size);

 if (adapter->iface_type == MWIFIEX_USB) {
  skb_push(cmd_node->cmd_skb, MWIFIEX_TYPE_LEN);
  put_unaligned_le32(MWIFIEX_USB_TYPE_CMD,
       cmd_node->cmd_skb->data);
  adapter->cmd_sent = 1;
  ret = adapter->if_ops.host_to_card(adapter,
         MWIFIEX_USB_EP_CMD_EVENT,
         cmd_node->cmd_skb, ((void*)0));
  skb_pull(cmd_node->cmd_skb, MWIFIEX_TYPE_LEN);
  if (ret == -EBUSY)
   cmd_node->cmd_skb = ((void*)0);
 } else {
  skb_push(cmd_node->cmd_skb, adapter->intf_hdr_len);
  ret = adapter->if_ops.host_to_card(adapter, MWIFIEX_TYPE_CMD,
         cmd_node->cmd_skb, ((void*)0));
  skb_pull(cmd_node->cmd_skb, adapter->intf_hdr_len);
 }

 if (ret == -1) {
  mwifiex_dbg(adapter, ERROR,
       "DNLD_CMD: host to card failed\n");
  if (adapter->iface_type == MWIFIEX_USB)
   adapter->cmd_sent = 0;
  if (cmd_node->wait_q_enabled)
   adapter->cmd_wait_q.status = -1;
  mwifiex_recycle_cmd_node(adapter, adapter->curr_cmd);

  spin_lock_bh(&adapter->mwifiex_cmd_lock);
  adapter->curr_cmd = ((void*)0);
  spin_unlock_bh(&adapter->mwifiex_cmd_lock);

  adapter->dbg.num_cmd_host_to_card_failure++;
  return -1;
 }


 adapter->dbg.last_cmd_index =
   (adapter->dbg.last_cmd_index + 1) % DBG_CMD_NUM;
 adapter->dbg.last_cmd_id[adapter->dbg.last_cmd_index] = cmd_code;
 adapter->dbg.last_cmd_act[adapter->dbg.last_cmd_index] =
   get_unaligned_le16((u8 *)host_cmd + S_DS_GEN);




 if (cmd_code != HostCmd_CMD_FW_DUMP_EVENT)
  mod_timer(&adapter->cmd_timer,
     jiffies + msecs_to_jiffies(MWIFIEX_TIMER_10S));


 cmd_code &= HostCmd_CMD_ID_MASK;

 return 0;
}
