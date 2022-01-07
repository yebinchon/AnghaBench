
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mii_bus {int id; int dev; } ;
struct TYPE_3__ {int * bus; int * parent; int release; } ;
struct mdio_device {int addr; TYPE_1__ dev; struct mii_bus* bus; int device_remove; int device_free; } ;


 int ENOMEM ;
 struct mdio_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PHY_ID_FMT ;
 int dev_set_name (TYPE_1__*,int ,int ,int) ;
 int device_initialize (TYPE_1__*) ;
 struct mdio_device* kzalloc (int,int ) ;
 int mdio_bus_type ;
 int mdio_device_free ;
 int mdio_device_release ;
 int mdio_device_remove ;

struct mdio_device *mdio_device_create(struct mii_bus *bus, int addr)
{
 struct mdio_device *mdiodev;


 mdiodev = kzalloc(sizeof(*mdiodev), GFP_KERNEL);
 if (!mdiodev)
  return ERR_PTR(-ENOMEM);

 mdiodev->dev.release = mdio_device_release;
 mdiodev->dev.parent = &bus->dev;
 mdiodev->dev.bus = &mdio_bus_type;
 mdiodev->device_free = mdio_device_free;
 mdiodev->device_remove = mdio_device_remove;
 mdiodev->bus = bus;
 mdiodev->addr = addr;

 dev_set_name(&mdiodev->dev, PHY_ID_FMT, bus->id, addr);

 device_initialize(&mdiodev->dev);

 return mdiodev;
}
