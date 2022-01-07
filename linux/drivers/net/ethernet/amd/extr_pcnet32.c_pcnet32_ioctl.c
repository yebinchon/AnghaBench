
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet32_private {int lock; int mii_if; scalar_t__ mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcnet32_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 int rc;
 unsigned long flags;


 if (lp->mii) {
  spin_lock_irqsave(&lp->lock, flags);
  rc = generic_mii_ioctl(&lp->mii_if, if_mii(rq), cmd, ((void*)0));
  spin_unlock_irqrestore(&lp->lock, flags);
 } else {
  rc = -EOPNOTSUPP;
 }

 return rc;
}
