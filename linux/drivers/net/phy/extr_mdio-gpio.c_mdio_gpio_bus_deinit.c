
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct device {int dummy; } ;


 struct mii_bus* dev_get_drvdata (struct device*) ;
 int free_mdio_bitbang (struct mii_bus*) ;

__attribute__((used)) static void mdio_gpio_bus_deinit(struct device *dev)
{
 struct mii_bus *bus = dev_get_drvdata(dev);

 free_mdio_bitbang(bus);
}
