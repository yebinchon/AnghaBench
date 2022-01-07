
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int driver_lock; } ;
struct cmd_ctrl_node {int dummy; } ;


 int __lbs_complete_command (struct lbs_private*,struct cmd_ctrl_node*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void lbs_complete_command(struct lbs_private *priv, struct cmd_ctrl_node *cmd,
     int result)
{
 unsigned long flags;
 spin_lock_irqsave(&priv->driver_lock, flags);
 __lbs_complete_command(priv, cmd, result);
 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
