
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mii_bus {char* name; int id; struct enetc_mdio_priv* priv; struct device* parent; int write; int read; } ;
struct enetc_pf {struct mii_bus* mdio; TYPE_2__* si; } ;
struct enetc_mdio_priv {int * hw; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_4__ {int hw; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int dev_err (struct device*,char*) ;
 char* dev_name (struct device*) ;
 struct mii_bus* devm_mdiobus_alloc_size (struct device*,int) ;
 int enetc_mdio_read ;
 int enetc_mdio_write ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,char*) ;

int enetc_mdio_probe(struct enetc_pf *pf)
{
 struct device *dev = &pf->si->pdev->dev;
 struct enetc_mdio_priv *mdio_priv;
 struct device_node *np;
 struct mii_bus *bus;
 int err;

 bus = devm_mdiobus_alloc_size(dev, sizeof(*mdio_priv));
 if (!bus)
  return -ENOMEM;

 bus->name = "Freescale ENETC MDIO Bus";
 bus->read = enetc_mdio_read;
 bus->write = enetc_mdio_write;
 bus->parent = dev;
 mdio_priv = bus->priv;
 mdio_priv->hw = &pf->si->hw;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));

 np = of_get_child_by_name(dev->of_node, "mdio");
 if (!np) {
  dev_err(dev, "MDIO node missing\n");
  return -EINVAL;
 }

 err = of_mdiobus_register(bus, np);
 if (err) {
  of_node_put(np);
  dev_err(dev, "cannot register MDIO bus\n");
  return err;
 }

 of_node_put(np);
 pf->mdio = bus;

 return 0;
}
