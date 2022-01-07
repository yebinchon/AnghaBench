
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct dpaa2_eth_priv {int num_channels; TYPE_2__** channel; struct net_device* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int store; } ;


 int DPAA2_ETH_STORE_SIZE ;
 int ENOMEM ;
 int dpaa2_io_store_create (int ,struct device*) ;
 int dpaa2_io_store_destroy (int ) ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static int alloc_rings(struct dpaa2_eth_priv *priv)
{
 struct net_device *net_dev = priv->net_dev;
 struct device *dev = net_dev->dev.parent;
 int i;

 for (i = 0; i < priv->num_channels; i++) {
  priv->channel[i]->store =
   dpaa2_io_store_create(DPAA2_ETH_STORE_SIZE, dev);
  if (!priv->channel[i]->store) {
   netdev_err(net_dev, "dpaa2_io_store_create() failed\n");
   goto err_ring;
  }
 }

 return 0;

err_ring:
 for (i = 0; i < priv->num_channels; i++) {
  if (!priv->channel[i]->store)
   break;
  dpaa2_io_store_destroy(priv->channel[i]->store);
 }

 return -ENOMEM;
}
