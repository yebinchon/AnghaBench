
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int ioc3_lock; int mii; } ;


 int mii_nway_restart (int *) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ioc3_nway_reset(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 int rc;

 spin_lock_irq(&ip->ioc3_lock);
 rc = mii_nway_restart(&ip->mii);
 spin_unlock_irq(&ip->ioc3_lock);

 return rc;
}
