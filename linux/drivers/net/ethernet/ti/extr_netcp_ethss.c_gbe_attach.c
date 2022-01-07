
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;
struct gbe_priv {int dev; int gbe_intf_head; int tx_pipe; } ;
struct gbe_intf {struct gbe_intf* slave; int gbe_intf_list; int tx_pipe; struct gbe_priv* gbe_dev; int dev; struct net_device* ndev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int devm_kfree (int ,struct gbe_intf*) ;
 void* devm_kzalloc (int ,int,int ) ;
 scalar_t__ init_slave (struct gbe_priv*,struct gbe_intf*,struct device_node*) ;
 int keystone_ethtool_ops ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int gbe_attach(void *inst_priv, struct net_device *ndev,
        struct device_node *node, void **intf_priv)
{
 struct gbe_priv *gbe_dev = inst_priv;
 struct gbe_intf *gbe_intf;
 int ret;

 if (!node) {
  dev_err(gbe_dev->dev, "interface node not available\n");
  return -ENODEV;
 }

 gbe_intf = devm_kzalloc(gbe_dev->dev, sizeof(*gbe_intf), GFP_KERNEL);
 if (!gbe_intf)
  return -ENOMEM;

 gbe_intf->ndev = ndev;
 gbe_intf->dev = gbe_dev->dev;
 gbe_intf->gbe_dev = gbe_dev;

 gbe_intf->slave = devm_kzalloc(gbe_dev->dev,
     sizeof(*gbe_intf->slave),
     GFP_KERNEL);
 if (!gbe_intf->slave) {
  ret = -ENOMEM;
  goto fail;
 }

 if (init_slave(gbe_dev, gbe_intf->slave, node)) {
  ret = -ENODEV;
  goto fail;
 }

 gbe_intf->tx_pipe = gbe_dev->tx_pipe;
 ndev->ethtool_ops = &keystone_ethtool_ops;
 list_add_tail(&gbe_intf->gbe_intf_list, &gbe_dev->gbe_intf_head);
 *intf_priv = gbe_intf;
 return 0;

fail:
 if (gbe_intf->slave)
  devm_kfree(gbe_dev->dev, gbe_intf->slave);
 if (gbe_intf)
  devm_kfree(gbe_dev->dev, gbe_intf);
 return ret;
}
