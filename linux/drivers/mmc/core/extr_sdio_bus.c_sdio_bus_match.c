
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct sdio_driver {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct sdio_func* dev_to_sdio_func (struct device*) ;
 scalar_t__ sdio_match_device (struct sdio_func*,struct sdio_driver*) ;
 struct sdio_driver* to_sdio_driver (struct device_driver*) ;

__attribute__((used)) static int sdio_bus_match(struct device *dev, struct device_driver *drv)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct sdio_driver *sdrv = to_sdio_driver(drv);

 if (sdio_match_device(func, sdrv))
  return 1;

 return 0;
}
