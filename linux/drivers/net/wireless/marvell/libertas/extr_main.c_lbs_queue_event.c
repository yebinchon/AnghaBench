
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lbs_private {scalar_t__ psstate; int driver_lock; int waitq; int event_fifo; } ;


 scalar_t__ PS_STATE_AWAKE ;
 scalar_t__ PS_STATE_SLEEP ;
 int kfifo_in (int *,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void lbs_queue_event(struct lbs_private *priv, u32 event)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->driver_lock, flags);

 if (priv->psstate == PS_STATE_SLEEP)
  priv->psstate = PS_STATE_AWAKE;

 kfifo_in(&priv->event_fifo, (unsigned char *) &event, sizeof(u32));

 wake_up(&priv->waitq);

 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
