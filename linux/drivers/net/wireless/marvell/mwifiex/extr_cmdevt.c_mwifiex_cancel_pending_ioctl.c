
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int mwifiex_cmd_lock; struct cmd_ctrl_node* curr_cmd; } ;
struct cmd_ctrl_node {scalar_t__ wait_q_enabled; } ;


 int mwifiex_cancel_scan (struct mwifiex_adapter*) ;
 int mwifiex_recycle_cmd_node (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mwifiex_cancel_pending_ioctl(struct mwifiex_adapter *adapter)
{
 struct cmd_ctrl_node *cmd_node = ((void*)0);

 if ((adapter->curr_cmd) &&
     (adapter->curr_cmd->wait_q_enabled)) {
  spin_lock_bh(&adapter->mwifiex_cmd_lock);
  cmd_node = adapter->curr_cmd;
  adapter->curr_cmd = ((void*)0);
  spin_unlock_bh(&adapter->mwifiex_cmd_lock);

  mwifiex_recycle_cmd_node(adapter, cmd_node);
 }

 mwifiex_cancel_scan(adapter);
}
