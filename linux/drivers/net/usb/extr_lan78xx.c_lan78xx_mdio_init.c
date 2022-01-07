
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lan78xx_net {int chipid; TYPE_4__* mdiobus; int net; TYPE_3__* udev; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {char* name; int phy_mask; int id; int write; int read; void* priv; } ;
struct TYPE_8__ {int of_node; } ;
struct TYPE_9__ {int devnum; TYPE_2__ dev; TYPE_1__* bus; } ;
struct TYPE_7__ {int busnum; } ;


 int ENOMEM ;



 int MII_BUS_ID_SIZE ;
 int lan78xx_mdiobus_read ;
 int lan78xx_mdiobus_write ;
 TYPE_4__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_4__*) ;
 int netdev_dbg (int ,char*,int ) ;
 int netdev_err (int ,char*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_mdiobus_register (TYPE_4__*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,int,int) ;

__attribute__((used)) static int lan78xx_mdio_init(struct lan78xx_net *dev)
{
 struct device_node *node;
 int ret;

 dev->mdiobus = mdiobus_alloc();
 if (!dev->mdiobus) {
  netdev_err(dev->net, "can't allocate MDIO bus\n");
  return -ENOMEM;
 }

 dev->mdiobus->priv = (void *)dev;
 dev->mdiobus->read = lan78xx_mdiobus_read;
 dev->mdiobus->write = lan78xx_mdiobus_write;
 dev->mdiobus->name = "lan78xx-mdiobus";

 snprintf(dev->mdiobus->id, MII_BUS_ID_SIZE, "usb-%03d:%03d",
   dev->udev->bus->busnum, dev->udev->devnum);

 switch (dev->chipid) {
 case 130:
 case 128:

  dev->mdiobus->phy_mask = ~(1 << 1);
  break;
 case 129:

  dev->mdiobus->phy_mask = ~(0xFF);
  break;
 }

 node = of_get_child_by_name(dev->udev->dev.of_node, "mdio");
 ret = of_mdiobus_register(dev->mdiobus, node);
 of_node_put(node);
 if (ret) {
  netdev_err(dev->net, "can't register MDIO bus\n");
  goto exit1;
 }

 netdev_dbg(dev->net, "registered mdiobus bus %s\n", dev->mdiobus->id);
 return 0;
exit1:
 mdiobus_free(dev->mdiobus);
 return ret;
}
