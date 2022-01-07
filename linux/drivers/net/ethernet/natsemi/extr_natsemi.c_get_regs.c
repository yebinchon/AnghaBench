
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;


 int NATSEMI_REGS_VER ;
 int netdev_get_regs (struct net_device*,void*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void get_regs(struct net_device *dev, struct ethtool_regs *regs, void *buf)
{
 struct netdev_private *np = netdev_priv(dev);
 regs->version = NATSEMI_REGS_VER;
 spin_lock_irq(&np->lock);
 netdev_get_regs(dev, buf);
 spin_unlock_irq(&np->lock);
}
