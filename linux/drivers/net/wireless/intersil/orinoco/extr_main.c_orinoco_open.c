
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int open; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int __orinoco_up (struct orinoco_private*) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

int orinoco_open(struct net_device *dev)
{
 struct orinoco_private *priv = ndev_priv(dev);
 unsigned long flags;
 int err;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 err = __orinoco_up(priv);

 if (!err)
  priv->open = 1;

 orinoco_unlock(priv, &flags);

 return err;
}
