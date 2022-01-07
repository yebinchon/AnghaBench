
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dev_priv {int mii_if; struct dev_info* adapter; } ;
struct dev_info {int lock; } ;


 int mii_nway_restart (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_nway_reset(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 int rc;

 mutex_lock(&hw_priv->lock);
 rc = mii_nway_restart(&priv->mii_if);
 mutex_unlock(&hw_priv->lock);
 return rc;
}
