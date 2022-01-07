
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {char* name; TYPE_1__* parent; int write; int read; struct axienet_local* priv; int id; } ;
struct device_node {int dummy; } ;
struct axienet_local {struct mii_bus* mii_bus; TYPE_1__* dev; scalar_t__ regs_start; } ;
struct TYPE_2__ {int of_node; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int axienet_mdio_enable (struct axienet_local*) ;
 int axienet_mdio_read ;
 int axienet_mdio_write ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,unsigned long long) ;

int axienet_mdio_setup(struct axienet_local *lp)
{
 struct device_node *mdio_node;
 struct mii_bus *bus;
 int ret;

 ret = axienet_mdio_enable(lp);
 if (ret < 0)
  return ret;

 bus = mdiobus_alloc();
 if (!bus)
  return -ENOMEM;

 snprintf(bus->id, MII_BUS_ID_SIZE, "axienet-%.8llx",
   (unsigned long long)lp->regs_start);

 bus->priv = lp;
 bus->name = "Xilinx Axi Ethernet MDIO";
 bus->read = axienet_mdio_read;
 bus->write = axienet_mdio_write;
 bus->parent = lp->dev;
 lp->mii_bus = bus;

 mdio_node = of_get_child_by_name(lp->dev->of_node, "mdio");
 ret = of_mdiobus_register(bus, mdio_node);
 of_node_put(mdio_node);
 if (ret) {
  mdiobus_free(bus);
  lp->mii_bus = ((void*)0);
  return ret;
 }
 return 0;
}
