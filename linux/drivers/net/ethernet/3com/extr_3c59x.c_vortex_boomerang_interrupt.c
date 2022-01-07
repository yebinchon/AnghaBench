
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int lock; scalar_t__ full_bus_master_rx; } ;
struct net_device {int irq; } ;
typedef int irqreturn_t ;


 int _boomerang_interrupt (int ,struct net_device*) ;
 int _vortex_interrupt (int ,struct net_device*) ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
vortex_boomerang_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct vortex_private *vp = netdev_priv(dev);
 unsigned long flags;
 irqreturn_t ret;

 spin_lock_irqsave(&vp->lock, flags);

 if (vp->full_bus_master_rx)
  ret = _boomerang_interrupt(dev->irq, dev);
 else
  ret = _vortex_interrupt(dev->irq, dev);

 spin_unlock_irqrestore(&vp->lock, flags);

 return ret;
}
