
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fs_enet_private {int lock; TYPE_1__* ops; } ;
struct ethtool_regs {int len; scalar_t__ version; } ;
struct TYPE_2__ {int (* get_regs ) (struct net_device*,void*,int*) ;} ;


 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*,void*,int*) ;

__attribute__((used)) static void fs_get_regs(struct net_device *dev, struct ethtool_regs *regs,
    void *p)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 unsigned long flags;
 int r, len;

 len = regs->len;

 spin_lock_irqsave(&fep->lock, flags);
 r = (*fep->ops->get_regs)(dev, p, &len);
 spin_unlock_irqrestore(&fep->lock, flags);

 if (r == 0)
  regs->version = 0;
}
