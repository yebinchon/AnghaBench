
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usbnet {int net; TYPE_2__* udev; struct ax88172a_private* driver_priv; } ;
struct ax88172a_private {TYPE_3__* mdio; } ;
struct TYPE_8__ {char* name; int id; int * write; int * read; void* priv; } ;
struct TYPE_7__ {int devnum; TYPE_1__* bus; } ;
struct TYPE_6__ {int busnum; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int asix_mdio_bus_read ;
 int asix_mdio_bus_write ;
 TYPE_3__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_3__*) ;
 int mdiobus_register (TYPE_3__*) ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*,int ) ;
 int snprintf (int ,int ,char*,int,int) ;

__attribute__((used)) static int ax88172a_init_mdio(struct usbnet *dev)
{
 struct ax88172a_private *priv = dev->driver_priv;
 int ret;

 priv->mdio = mdiobus_alloc();
 if (!priv->mdio) {
  netdev_err(dev->net, "Could not allocate MDIO bus\n");
  return -ENOMEM;
 }

 priv->mdio->priv = (void *)dev;
 priv->mdio->read = &asix_mdio_bus_read;
 priv->mdio->write = &asix_mdio_bus_write;
 priv->mdio->name = "Asix MDIO Bus";

 snprintf(priv->mdio->id, MII_BUS_ID_SIZE, "usb-%03d:%03d",
   dev->udev->bus->busnum, dev->udev->devnum);

 ret = mdiobus_register(priv->mdio);
 if (ret) {
  netdev_err(dev->net, "Could not register MDIO bus\n");
  goto mfree;
 }

 netdev_info(dev->net, "registered mdio bus %s\n", priv->mdio->id);
 return 0;

mfree:
 mdiobus_free(priv->mdio);
 return ret;
}
