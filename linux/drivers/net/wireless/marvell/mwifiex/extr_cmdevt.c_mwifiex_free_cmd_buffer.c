
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int (* cmdrsp_complete ) (struct mwifiex_adapter*,scalar_t__) ;} ;
struct mwifiex_adapter {scalar_t__ iface_type; struct cmd_ctrl_node* cmd_pool; TYPE_1__ if_ops; } ;
struct cmd_ctrl_node {scalar_t__ resp_skb; scalar_t__ skb; } ;


 int CMD ;
 int FATAL ;
 size_t MWIFIEX_NUM_OF_CMD_BUFFER ;
 scalar_t__ MWIFIEX_USB ;
 int dev_kfree_skb_any (scalar_t__) ;
 int kfree (struct cmd_ctrl_node*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int stub1 (struct mwifiex_adapter*,scalar_t__) ;

void mwifiex_free_cmd_buffer(struct mwifiex_adapter *adapter)
{
 struct cmd_ctrl_node *cmd_array;
 u32 i;


 if (!adapter->cmd_pool) {
  mwifiex_dbg(adapter, FATAL,
       "info: FREE_CMD_BUF: cmd_pool is null\n");
  return;
 }

 cmd_array = adapter->cmd_pool;


 for (i = 0; i < MWIFIEX_NUM_OF_CMD_BUFFER; i++) {
  if (cmd_array[i].skb) {
   mwifiex_dbg(adapter, CMD,
        "cmd: free cmd buffer %d\n", i);
   dev_kfree_skb_any(cmd_array[i].skb);
  }
  if (!cmd_array[i].resp_skb)
   continue;

  if (adapter->iface_type == MWIFIEX_USB)
   adapter->if_ops.cmdrsp_complete(adapter,
       cmd_array[i].resp_skb);
  else
   dev_kfree_skb_any(cmd_array[i].resp_skb);
 }

 if (adapter->cmd_pool) {
  mwifiex_dbg(adapter, CMD,
       "cmd: free cmd pool\n");
  kfree(adapter->cmd_pool);
  adapter->cmd_pool = ((void*)0);
 }
}
