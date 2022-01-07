
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct el3_private {int lock; } ;


 int el3_link_ok (struct net_device*) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static u32 el3_get_link(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 u32 ret;

 spin_lock_irq(&lp->lock);
 ret = el3_link_ok(dev);
 spin_unlock_irq(&lp->lock);
 return ret;
}
