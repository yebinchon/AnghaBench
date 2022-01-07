
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int lock; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_emac_interrupt_unlocked (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ravb_emac_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = dev_id;
 struct ravb_private *priv = netdev_priv(ndev);

 spin_lock(&priv->lock);
 ravb_emac_interrupt_unlocked(ndev);
 spin_unlock(&priv->lock);
 return IRQ_HANDLED;
}
