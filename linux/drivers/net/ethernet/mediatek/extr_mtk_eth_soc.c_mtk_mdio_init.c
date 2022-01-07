
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mtk_eth {TYPE_1__* mii_bus; TYPE_3__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_5__ {char* name; int id; TYPE_3__* parent; struct mtk_eth* priv; int write; int read; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int dev_err (TYPE_3__*,char*,char*) ;
 TYPE_1__* devm_mdiobus_alloc (TYPE_3__*) ;
 int mtk_mdio_read ;
 int mtk_mdio_write ;
 int of_device_is_available (struct device_node*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_mdiobus_register (TYPE_1__*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,struct device_node*) ;

__attribute__((used)) static int mtk_mdio_init(struct mtk_eth *eth)
{
 struct device_node *mii_np;
 int ret;

 mii_np = of_get_child_by_name(eth->dev->of_node, "mdio-bus");
 if (!mii_np) {
  dev_err(eth->dev, "no %s child node found", "mdio-bus");
  return -ENODEV;
 }

 if (!of_device_is_available(mii_np)) {
  ret = -ENODEV;
  goto err_put_node;
 }

 eth->mii_bus = devm_mdiobus_alloc(eth->dev);
 if (!eth->mii_bus) {
  ret = -ENOMEM;
  goto err_put_node;
 }

 eth->mii_bus->name = "mdio";
 eth->mii_bus->read = mtk_mdio_read;
 eth->mii_bus->write = mtk_mdio_write;
 eth->mii_bus->priv = eth;
 eth->mii_bus->parent = eth->dev;

 snprintf(eth->mii_bus->id, MII_BUS_ID_SIZE, "%pOFn", mii_np);
 ret = of_mdiobus_register(eth->mii_bus, mii_np);

err_put_node:
 of_node_put(mii_np);
 return ret;
}
