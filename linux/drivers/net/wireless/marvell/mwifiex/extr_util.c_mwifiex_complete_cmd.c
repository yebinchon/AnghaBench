
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; int status; } ;
struct mwifiex_adapter {TYPE_1__ cmd_wait_q; } ;
struct cmd_ctrl_node {int* condition; int wait_q_enabled; } ;


 int CMD ;
 int WARN_ON (int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int ) ;
 int wake_up_interruptible (int *) ;

int mwifiex_complete_cmd(struct mwifiex_adapter *adapter,
    struct cmd_ctrl_node *cmd_node)
{
 WARN_ON(!cmd_node->wait_q_enabled);
 mwifiex_dbg(adapter, CMD, "cmd completed: status=%d\n",
      adapter->cmd_wait_q.status);

 *cmd_node->condition = 1;
 wake_up_interruptible(&adapter->cmd_wait_q.wait);

 return 0;
}
