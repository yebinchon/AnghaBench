
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int cmd_free_q_lock; int cmd_free_q; } ;
struct cmd_ctrl_node {int list; scalar_t__ wait_q_enabled; } ;


 int list_add_tail (int *,int *) ;
 int mwifiex_clean_cmd_node (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int mwifiex_complete_cmd (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mwifiex_insert_cmd_to_free_q(struct mwifiex_adapter *adapter,
        struct cmd_ctrl_node *cmd_node)
{
 if (!cmd_node)
  return;

 if (cmd_node->wait_q_enabled)
  mwifiex_complete_cmd(adapter, cmd_node);

 mwifiex_clean_cmd_node(adapter, cmd_node);


 spin_lock_bh(&adapter->cmd_free_q_lock);
 list_add_tail(&cmd_node->list, &adapter->cmd_free_q);
 spin_unlock_bh(&adapter->cmd_free_q_lock);
}
