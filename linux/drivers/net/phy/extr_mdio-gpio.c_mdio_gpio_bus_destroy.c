
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct device {int dummy; } ;


 struct mii_bus* dev_get_drvdata (struct device*) ;
 int mdio_gpio_bus_deinit (struct device*) ;
 int mdiobus_unregister (struct mii_bus*) ;

__attribute__((used)) static void mdio_gpio_bus_destroy(struct device *dev)
{
 struct mii_bus *bus = dev_get_drvdata(dev);

 mdiobus_unregister(bus);
 mdio_gpio_bus_deinit(dev);
}
