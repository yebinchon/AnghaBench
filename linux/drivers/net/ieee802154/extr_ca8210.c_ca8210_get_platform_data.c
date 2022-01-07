
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_platform_data {int extclockgpio; int extclockfreq; scalar_t__ extclockenable; } ;


 int EINVAL ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static int ca8210_get_platform_data(
 struct spi_device *spi_device,
 struct ca8210_platform_data *pdata
)
{
 int ret = 0;

 if (!spi_device->dev.of_node)
  return -EINVAL;

 pdata->extclockenable = of_property_read_bool(
  spi_device->dev.of_node,
  "extclock-enable"
 );
 if (pdata->extclockenable) {
  ret = of_property_read_u32(
   spi_device->dev.of_node,
   "extclock-freq",
   &pdata->extclockfreq
  );
  if (ret < 0)
   return ret;

  ret = of_property_read_u32(
   spi_device->dev.of_node,
   "extclock-gpio",
   &pdata->extclockgpio
  );
 }

 return ret;
}
