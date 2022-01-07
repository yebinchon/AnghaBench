
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int lock; int wolopts; int device; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int WAKE_MAGIC ;
 int WAKE_UCAST ;
 scalar_t__ device_can_wakeup (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void stmmac_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 mutex_lock(&priv->lock);
 if (device_can_wakeup(priv->device)) {
  wol->supported = WAKE_MAGIC | WAKE_UCAST;
  wol->wolopts = priv->wolopts;
 }
 mutex_unlock(&priv->lock);
}
