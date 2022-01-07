
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct net_device {int dev_addr; TYPE_1__ dev; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int dpni_set_primary_mac_addr (int ,int ,int ,int ) ;
 int eth_mac_addr (struct net_device*,void*) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dpaa2_eth_set_addr(struct net_device *net_dev, void *addr)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 struct device *dev = net_dev->dev.parent;
 int err;

 err = eth_mac_addr(net_dev, addr);
 if (err < 0) {
  dev_err(dev, "eth_mac_addr() failed (%d)\n", err);
  return err;
 }

 err = dpni_set_primary_mac_addr(priv->mc_io, 0, priv->mc_token,
     net_dev->dev_addr);
 if (err) {
  dev_err(dev, "dpni_set_primary_mac_addr() failed (%d)\n", err);
  return err;
 }

 return 0;
}
