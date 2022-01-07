
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {int dummy; } ;
struct TYPE_2__ {void* platform_data; } ;
struct mdio_device {TYPE_1__ dev; int bus_match; int modalias; } ;
struct mdio_board_info {scalar_t__ platform_data; int modalias; int mdio_addr; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct mdio_device*) ;
 int mdio_device_bus_match ;
 struct mdio_device* mdio_device_create (struct mii_bus*,int ) ;
 int mdio_device_free (struct mdio_device*) ;
 int mdio_device_register (struct mdio_device*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int mdiobus_create_device(struct mii_bus *bus,
     struct mdio_board_info *bi)
{
 struct mdio_device *mdiodev;
 int ret = 0;

 mdiodev = mdio_device_create(bus, bi->mdio_addr);
 if (IS_ERR(mdiodev))
  return -ENODEV;

 strncpy(mdiodev->modalias, bi->modalias,
  sizeof(mdiodev->modalias));
 mdiodev->bus_match = mdio_device_bus_match;
 mdiodev->dev.platform_data = (void *)bi->platform_data;

 ret = mdio_device_register(mdiodev);
 if (ret)
  mdio_device_free(mdiodev);

 return ret;
}
