
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_mailbox {int queue_lock; int num_cmds; } ;
struct qlcnic_cmd_args {int list; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_mailbox* mailbox; } ;


 int list_del (int *) ;
 int qlcnic_83xx_notify_cmd_completion (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qlcnic_83xx_dequeue_mbx_cmd(struct qlcnic_adapter *adapter,
     struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_mailbox *mbx = adapter->ahw->mailbox;

 spin_lock_bh(&mbx->queue_lock);

 list_del(&cmd->list);
 mbx->num_cmds--;

 spin_unlock_bh(&mbx->queue_lock);

 qlcnic_83xx_notify_cmd_completion(adapter, cmd);
}
