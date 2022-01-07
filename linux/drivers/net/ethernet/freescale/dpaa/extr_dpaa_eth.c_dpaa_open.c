
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mac_device {int (* start ) (struct mac_device*) ;int * port; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;


 int ARRAY_SIZE (int *) ;
 int dpaa_eth_napi_disable (struct dpaa_priv*) ;
 int dpaa_eth_napi_enable (struct dpaa_priv*) ;
 int dpaa_phy_init (struct net_device*) ;
 int fman_port_disable (int ) ;
 int fman_port_enable (int ) ;
 int ifup ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int netif_err (struct dpaa_priv*,int ,struct net_device*,char*,int) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int stub1 (struct mac_device*) ;

__attribute__((used)) static int dpaa_open(struct net_device *net_dev)
{
 struct mac_device *mac_dev;
 struct dpaa_priv *priv;
 int err, i;

 priv = netdev_priv(net_dev);
 mac_dev = priv->mac_dev;
 dpaa_eth_napi_enable(priv);

 err = dpaa_phy_init(net_dev);
 if (err)
  goto phy_init_failed;

 for (i = 0; i < ARRAY_SIZE(mac_dev->port); i++) {
  err = fman_port_enable(mac_dev->port[i]);
  if (err)
   goto mac_start_failed;
 }

 err = priv->mac_dev->start(mac_dev);
 if (err < 0) {
  netif_err(priv, ifup, net_dev, "mac_dev->start() = %d\n", err);
  goto mac_start_failed;
 }

 netif_tx_start_all_queues(net_dev);

 return 0;

mac_start_failed:
 for (i = 0; i < ARRAY_SIZE(mac_dev->port); i++)
  fman_port_disable(mac_dev->port[i]);

phy_init_failed:
 dpaa_eth_napi_disable(priv);

 return err;
}
