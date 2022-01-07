
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; } ;
struct dpaa_priv {TYPE_1__* mac_dev; } ;
struct TYPE_2__ {int promisc; int (* set_promisc ) (int ,int) ;int allmulti; int (* set_allmulti ) (int ,int) ;int (* set_multi ) (struct net_device*,TYPE_1__*) ;int fman_mac; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int drv ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int netif_err (struct dpaa_priv const*,int ,struct net_device*,char*,int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (struct net_device*,TYPE_1__*) ;

__attribute__((used)) static void dpaa_set_rx_mode(struct net_device *net_dev)
{
 const struct dpaa_priv *priv;
 int err;

 priv = netdev_priv(net_dev);

 if (!!(net_dev->flags & IFF_PROMISC) != priv->mac_dev->promisc) {
  priv->mac_dev->promisc = !priv->mac_dev->promisc;
  err = priv->mac_dev->set_promisc(priv->mac_dev->fman_mac,
       priv->mac_dev->promisc);
  if (err < 0)
   netif_err(priv, drv, net_dev,
      "mac_dev->set_promisc() = %d\n",
      err);
 }

 if (!!(net_dev->flags & IFF_ALLMULTI) != priv->mac_dev->allmulti) {
  priv->mac_dev->allmulti = !priv->mac_dev->allmulti;
  err = priv->mac_dev->set_allmulti(priv->mac_dev->fman_mac,
        priv->mac_dev->allmulti);
  if (err < 0)
   netif_err(priv, drv, net_dev,
      "mac_dev->set_allmulti() = %d\n",
      err);
 }

 err = priv->mac_dev->set_multi(net_dev, priv->mac_dev);
 if (err < 0)
  netif_err(priv, drv, net_dev, "mac_dev->set_multi() = %d\n",
     err);
}
