
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int * cur_cmd; } ;
struct cmd_ctrl_node {int result; int cmdwaitqwoken; int callback; int cmdwait_q; } ;


 int __lbtf_cleanup_and_insert_cmd (struct lbtf_private*,struct cmd_ctrl_node*) ;
 int wake_up_interruptible (int *) ;

void lbtf_complete_command(struct lbtf_private *priv, struct cmd_ctrl_node *cmd,
     int result)
{
 cmd->result = result;
 cmd->cmdwaitqwoken = 1;
 wake_up_interruptible(&cmd->cmdwait_q);

 if (!cmd->callback)
  __lbtf_cleanup_and_insert_cmd(priv, cmd);
 priv->cur_cmd = ((void*)0);
}
