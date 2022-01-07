
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ tx_pending_len; int driver_lock; int waitq; int wakeup_dev_required; int cur_cmd; int dnld_sent; int tx_lockup_timer; } ;


 int DNLD_RES_RECEIVED ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void lbs_host_to_card_done(struct lbs_private *priv)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->driver_lock, flags);
 del_timer(&priv->tx_lockup_timer);

 priv->dnld_sent = DNLD_RES_RECEIVED;


 if (!priv->cur_cmd || priv->tx_pending_len > 0) {
  if (!priv->wakeup_dev_required)
   wake_up(&priv->waitq);
 }

 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
