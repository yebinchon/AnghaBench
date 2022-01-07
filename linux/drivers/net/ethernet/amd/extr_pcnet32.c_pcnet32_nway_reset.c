
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet32_private {int lock; int mii_if; scalar_t__ mii; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int mii_nway_restart (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcnet32_nway_reset(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned long flags;
 int r = -EOPNOTSUPP;

 if (lp->mii) {
  spin_lock_irqsave(&lp->lock, flags);
  r = mii_nway_restart(&lp->mii_if);
  spin_unlock_irqrestore(&lp->lock, flags);
 }
 return r;
}
