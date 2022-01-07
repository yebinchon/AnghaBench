
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nixge_priv {struct mii_bus* mii_bus; int dev; } ;
struct mii_bus {char* name; int parent; int write; int read; struct nixge_priv* priv; int id; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 char* dev_name (int ) ;
 struct mii_bus* devm_mdiobus_alloc (int ) ;
 int nixge_mdio_read ;
 int nixge_mdio_write ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int nixge_mdio_setup(struct nixge_priv *priv, struct device_node *np)
{
 struct mii_bus *bus;

 bus = devm_mdiobus_alloc(priv->dev);
 if (!bus)
  return -ENOMEM;

 snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mii", dev_name(priv->dev));
 bus->priv = priv;
 bus->name = "nixge_mii_bus";
 bus->read = nixge_mdio_read;
 bus->write = nixge_mdio_write;
 bus->parent = priv->dev;

 priv->mii_bus = bus;

 return of_mdiobus_register(bus, np);
}
