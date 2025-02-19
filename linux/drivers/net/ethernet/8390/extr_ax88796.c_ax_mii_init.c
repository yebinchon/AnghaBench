
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {char* name; int id; } ;
struct TYPE_6__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ei_device {scalar_t__ mem; } ;
struct TYPE_8__ {int * ops; } ;
struct ax_device {TYPE_2__* mii_bus; TYPE_5__ bb_ctrl; scalar_t__ addr_memr; } ;
struct TYPE_7__ {char* name; int id; int parent; } ;


 scalar_t__ AX_MEMR ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 TYPE_2__* alloc_mdio_bitbang (TYPE_5__*) ;
 int bb_ops ;
 int free_mdio_bitbang (TYPE_2__*) ;
 int mdiobus_register (TYPE_2__*) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int snprintf (int ,int ,char*,char*,int) ;
 struct ax_device* to_ax_dev (struct net_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int ax_mii_init(struct net_device *dev)
{
 struct platform_device *pdev = to_platform_device(dev->dev.parent);
 struct ei_device *ei_local = netdev_priv(dev);
 struct ax_device *ax = to_ax_dev(dev);
 int err;

 ax->bb_ctrl.ops = &bb_ops;
 ax->addr_memr = ei_local->mem + AX_MEMR;
 ax->mii_bus = alloc_mdio_bitbang(&ax->bb_ctrl);
 if (!ax->mii_bus) {
  err = -ENOMEM;
  goto out;
 }

 ax->mii_bus->name = "ax88796_mii_bus";
 ax->mii_bus->parent = dev->dev.parent;
 snprintf(ax->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
   pdev->name, pdev->id);

 err = mdiobus_register(ax->mii_bus);
 if (err)
  goto out_free_mdio_bitbang;

 return 0;

 out_free_mdio_bitbang:
 free_mdio_bitbang(ax->mii_bus);
 out:
 return err;
}
