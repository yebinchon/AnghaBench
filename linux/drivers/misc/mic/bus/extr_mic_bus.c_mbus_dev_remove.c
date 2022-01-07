
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbus_driver {int (* remove ) (struct mbus_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct mbus_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 struct mbus_device* dev_to_mbus (struct device*) ;
 struct mbus_driver* drv_to_mbus (int ) ;
 int stub1 (struct mbus_device*) ;

__attribute__((used)) static int mbus_dev_remove(struct device *d)
{
 struct mbus_device *dev = dev_to_mbus(d);
 struct mbus_driver *drv = drv_to_mbus(dev->dev.driver);

 drv->remove(dev);
 return 0;
}
