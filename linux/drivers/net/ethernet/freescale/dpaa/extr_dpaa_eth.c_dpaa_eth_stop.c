
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dpaa_priv {int dummy; } ;


 int dpaa_eth_napi_disable (struct dpaa_priv*) ;
 int dpaa_stop (struct net_device*) ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dpaa_eth_stop(struct net_device *net_dev)
{
 struct dpaa_priv *priv;
 int err;

 err = dpaa_stop(net_dev);

 priv = netdev_priv(net_dev);
 dpaa_eth_napi_disable(priv);

 return err;
}
