
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_adapter {int cmd_pending; } ;
struct host_cmd_ds_command {int command; } ;
struct cmd_ctrl_node {TYPE_1__* cmd_skb; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int CMD ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int le16_to_cpu (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int ,int ) ;
 int mwifiex_insert_cmd_to_free_q (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;

void mwifiex_recycle_cmd_node(struct mwifiex_adapter *adapter,
         struct cmd_ctrl_node *cmd_node)
{
 struct host_cmd_ds_command *host_cmd = (void *)cmd_node->cmd_skb->data;

 mwifiex_insert_cmd_to_free_q(adapter, cmd_node);

 atomic_dec(&adapter->cmd_pending);
 mwifiex_dbg(adapter, CMD,
      "cmd: FREE_CMD: cmd=%#x, cmd_pending=%d\n",
  le16_to_cpu(host_cmd->command),
  atomic_read(&adapter->cmd_pending));
}
