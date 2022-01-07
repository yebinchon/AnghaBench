
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fs_enet_private {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* adjust_link ) (struct net_device*) ;} ;


 int generic_adjust_link (struct net_device*) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void fs_adjust_link(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&fep->lock, flags);

 if(fep->ops->adjust_link)
  fep->ops->adjust_link(dev);
 else
  generic_adjust_link(dev);

 spin_unlock_irqrestore(&fep->lock, flags);
}
