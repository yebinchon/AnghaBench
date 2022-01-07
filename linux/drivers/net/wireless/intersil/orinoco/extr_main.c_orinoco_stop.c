
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {scalar_t__ open; } ;
struct net_device {int dummy; } ;


 int __orinoco_down (struct orinoco_private*) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 int orinoco_lock_irq (struct orinoco_private*) ;
 int orinoco_unlock_irq (struct orinoco_private*) ;

int orinoco_stop(struct net_device *dev)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int err = 0;




 orinoco_lock_irq(priv);

 priv->open = 0;

 err = __orinoco_down(priv);

 orinoco_unlock_irq(priv);

 return err;
}
