
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct emac_instance {int mii_bus; TYPE_2__* ofdev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int emac_dt_mdio_probe (struct emac_instance*) ;
 int emac_dt_phy_connect (struct emac_instance*,struct device_node*) ;
 int mdiobus_unregister (int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static int emac_dt_phy_probe(struct emac_instance *dev)
{
 struct device_node *np = dev->ofdev->dev.of_node;
 struct device_node *phy_handle;
 int res = 1;

 phy_handle = of_parse_phandle(np, "phy-handle", 0);

 if (phy_handle) {
  res = emac_dt_mdio_probe(dev);
  if (!res) {
   res = emac_dt_phy_connect(dev, phy_handle);
   if (res)
    mdiobus_unregister(dev->mii_bus);
  }
 }

 of_node_put(phy_handle);
 return res;
}
