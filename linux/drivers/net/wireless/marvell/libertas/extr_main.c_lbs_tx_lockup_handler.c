
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lbs_private {int driver_lock; int waitq; int dnld_sent; int (* reset_card ) (struct lbs_private*) ;int dev; } ;


 int DNLD_RES_RECEIVED ;
 struct lbs_private* from_timer (int ,struct timer_list*,int ) ;
 int netdev_info (int ,char*) ;
 struct lbs_private* priv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct lbs_private*) ;
 int tx_lockup_timer ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void lbs_tx_lockup_handler(struct timer_list *t)
{
 struct lbs_private *priv = from_timer(priv, t, tx_lockup_timer);
 unsigned long flags;

 spin_lock_irqsave(&priv->driver_lock, flags);

 netdev_info(priv->dev, "TX lockup detected\n");
 if (priv->reset_card)
  priv->reset_card(priv);

 priv->dnld_sent = DNLD_RES_RECEIVED;
 wake_up_interruptible(&priv->waitq);

 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
