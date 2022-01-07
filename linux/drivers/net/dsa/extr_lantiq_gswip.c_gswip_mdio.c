
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gswip_priv {int dev; struct dsa_switch* ds; } ;
struct dsa_switch {TYPE_1__* slave_mii_bus; int phys_mii_mask; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {char* name; int phy_mask; int parent; int id; int write; int read; struct gswip_priv* priv; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 char* dev_name (int ) ;
 TYPE_1__* devm_mdiobus_alloc (int ) ;
 int gswip_mdio_rd ;
 int gswip_mdio_wr ;
 int of_mdiobus_register (TYPE_1__*,struct device_node*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int gswip_mdio(struct gswip_priv *priv, struct device_node *mdio_np)
{
 struct dsa_switch *ds = priv->ds;

 ds->slave_mii_bus = devm_mdiobus_alloc(priv->dev);
 if (!ds->slave_mii_bus)
  return -ENOMEM;

 ds->slave_mii_bus->priv = priv;
 ds->slave_mii_bus->read = gswip_mdio_rd;
 ds->slave_mii_bus->write = gswip_mdio_wr;
 ds->slave_mii_bus->name = "lantiq,xrx200-mdio";
 snprintf(ds->slave_mii_bus->id, MII_BUS_ID_SIZE, "%s-mii",
   dev_name(priv->dev));
 ds->slave_mii_bus->parent = priv->dev;
 ds->slave_mii_bus->phy_mask = ~ds->phys_mii_mask;

 return of_mdiobus_register(ds->slave_mii_bus, mdio_np);
}
