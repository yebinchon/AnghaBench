
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct de_private {int de21040; int lock; } ;


 int DE_REGS_VER ;
 int __de_get_regs (struct de_private*,void*) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void de_get_regs(struct net_device *dev, struct ethtool_regs *regs,
   void *data)
{
 struct de_private *de = netdev_priv(dev);

 regs->version = (DE_REGS_VER << 2) | de->de21040;

 spin_lock_irq(&de->lock);
 __de_get_regs(de, data);
 spin_unlock_irq(&de->lock);
}
