
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int waitq; int * cur_cmd; } ;
struct cmd_ctrl_node {int result; int cmdwaitqwoken; scalar_t__ callback; int cmdwait_q; int list; } ;


 int __lbs_cleanup_and_insert_cmd (struct lbs_private*,struct cmd_ctrl_node*) ;
 scalar_t__ lbs_cmd_async_callback ;
 int list_del_init (int *) ;
 int wake_up (int *) ;

void __lbs_complete_command(struct lbs_private *priv, struct cmd_ctrl_node *cmd,
       int result)
{






 list_del_init(&cmd->list);

 cmd->result = result;
 cmd->cmdwaitqwoken = 1;
 wake_up(&cmd->cmdwait_q);

 if (!cmd->callback || cmd->callback == lbs_cmd_async_callback)
  __lbs_cleanup_and_insert_cmd(priv, cmd);
 priv->cur_cmd = ((void*)0);
 wake_up(&priv->waitq);
}
