
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int lock; int mmio_addr; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; } ;


 int memcpy_fromio (void*,int ,int ) ;
 struct sis190_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sis190_get_regs(struct net_device *dev, struct ethtool_regs *regs,
       void *p)
{
 struct sis190_private *tp = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&tp->lock, flags);
 memcpy_fromio(p, tp->mmio_addr, regs->len);
 spin_unlock_irqrestore(&tp->lock, flags);
}
