
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int scan_pending_q_lock; int scan_pending_q; int scan_wait_q_woken; } ;
struct cmd_ctrl_node {int wait_q_enabled; int list; int * condition; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
mwifiex_queue_scan_cmd(struct mwifiex_private *priv,
         struct cmd_ctrl_node *cmd_node)
{
 struct mwifiex_adapter *adapter = priv->adapter;

 cmd_node->wait_q_enabled = 1;
 cmd_node->condition = &adapter->scan_wait_q_woken;
 spin_lock_bh(&adapter->scan_pending_q_lock);
 list_add_tail(&cmd_node->list, &adapter->scan_pending_q);
 spin_unlock_bh(&adapter->scan_pending_q_lock);
}
