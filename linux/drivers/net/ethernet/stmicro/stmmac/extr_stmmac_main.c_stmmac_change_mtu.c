
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dev; } ;
struct net_device {int mtu; } ;


 int EBUSY ;
 int netdev_err (int ,char*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int stmmac_change_mtu(struct net_device *dev, int new_mtu)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (netif_running(dev)) {
  netdev_err(priv->dev, "must be stopped to change its MTU\n");
  return -EBUSY;
 }

 dev->mtu = new_mtu;

 netdev_update_features(dev);

 return 0;
}
