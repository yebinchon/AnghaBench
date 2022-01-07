
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * phydev; } ;
struct mac_device {int (* stop ) (struct mac_device*) ;int * port; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;


 int ARRAY_SIZE (int *) ;
 int fman_port_disable (int ) ;
 int ifdown ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int netif_err (struct dpaa_priv*,int ,struct net_device*,char*,int) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_disconnect (int *) ;
 int stub1 (struct mac_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dpaa_stop(struct net_device *net_dev)
{
 struct mac_device *mac_dev;
 struct dpaa_priv *priv;
 int i, err, error;

 priv = netdev_priv(net_dev);
 mac_dev = priv->mac_dev;

 netif_tx_stop_all_queues(net_dev);



 usleep_range(5000, 10000);

 err = mac_dev->stop(mac_dev);
 if (err < 0)
  netif_err(priv, ifdown, net_dev, "mac_dev->stop() = %d\n",
     err);

 for (i = 0; i < ARRAY_SIZE(mac_dev->port); i++) {
  error = fman_port_disable(mac_dev->port[i]);
  if (error)
   err = error;
 }

 if (net_dev->phydev)
  phy_disconnect(net_dev->phydev);
 net_dev->phydev = ((void*)0);

 return err;
}
