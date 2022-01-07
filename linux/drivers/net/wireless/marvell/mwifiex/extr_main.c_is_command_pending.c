
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int cmd_pending_q_lock; int cmd_pending_q; } ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int is_command_pending(struct mwifiex_adapter *adapter)
{
 int is_cmd_pend_q_empty;

 spin_lock_bh(&adapter->cmd_pending_q_lock);
 is_cmd_pend_q_empty = list_empty(&adapter->cmd_pending_q);
 spin_unlock_bh(&adapter->cmd_pending_q_lock);

 return !is_cmd_pend_q_empty;
}
