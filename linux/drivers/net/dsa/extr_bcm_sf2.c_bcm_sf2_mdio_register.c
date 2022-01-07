
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dsa_switch {int phys_mii_mask; TYPE_5__* dev; TYPE_2__* slave_mii_bus; } ;
struct device_node {int dummy; } ;
struct bcm_sf2_priv {int indir_phy_mask; TYPE_2__* slave_mii_bus; struct device_node* master_mii_dn; TYPE_3__* master_mii_bus; } ;
struct TYPE_9__ {int parent; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_7__ {char* name; int phy_mask; int parent; TYPE_1__ dev; int id; int write; int read; struct bcm_sf2_priv* priv; } ;


 int BRCM_PSEUDO_PHY_ADDR ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int MII_BUS_ID_SIZE ;
 int bcm_sf2_sw_mdio_read ;
 int bcm_sf2_sw_mdio_write ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 TYPE_2__* devm_mdiobus_alloc (TYPE_5__*) ;
 int get_device (int *) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 TYPE_3__* of_mdio_find_bus (struct device_node*) ;
 int of_mdiobus_register (TYPE_2__*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,int ) ;

__attribute__((used)) static int bcm_sf2_mdio_register(struct dsa_switch *ds)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 struct device_node *dn;
 static int index;
 int err;


 dn = of_find_compatible_node(((void*)0), ((void*)0), "brcm,unimac-mdio");
 priv->master_mii_bus = of_mdio_find_bus(dn);
 if (!priv->master_mii_bus)
  return -EPROBE_DEFER;

 get_device(&priv->master_mii_bus->dev);
 priv->master_mii_dn = dn;

 priv->slave_mii_bus = devm_mdiobus_alloc(ds->dev);
 if (!priv->slave_mii_bus)
  return -ENOMEM;

 priv->slave_mii_bus->priv = priv;
 priv->slave_mii_bus->name = "sf2 slave mii";
 priv->slave_mii_bus->read = bcm_sf2_sw_mdio_read;
 priv->slave_mii_bus->write = bcm_sf2_sw_mdio_write;
 snprintf(priv->slave_mii_bus->id, MII_BUS_ID_SIZE, "sf2-%d",
   index++);
 priv->slave_mii_bus->dev.of_node = dn;
 if (of_machine_is_compatible("brcm,bcm7445d0"))
  priv->indir_phy_mask |= (1 << BRCM_PSEUDO_PHY_ADDR);
 else
  priv->indir_phy_mask = 0;

 ds->phys_mii_mask = priv->indir_phy_mask;
 ds->slave_mii_bus = priv->slave_mii_bus;
 priv->slave_mii_bus->parent = ds->dev->parent;
 priv->slave_mii_bus->phy_mask = ~priv->indir_phy_mask;

 err = of_mdiobus_register(priv->slave_mii_bus, dn);
 if (err && dn)
  of_node_put(dn);

 return err;
}
