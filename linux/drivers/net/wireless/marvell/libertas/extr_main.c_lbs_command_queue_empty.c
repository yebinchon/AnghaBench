
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int driver_lock; int cmdpendingq; int * cur_cmd; } ;


 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool lbs_command_queue_empty(struct lbs_private *priv)
{
 unsigned long flags;
 bool ret;
 spin_lock_irqsave(&priv->driver_lock, flags);
 ret = priv->cur_cmd == ((void*)0) && list_empty(&priv->cmdpendingq);
 spin_unlock_irqrestore(&priv->driver_lock, flags);
 return ret;
}
