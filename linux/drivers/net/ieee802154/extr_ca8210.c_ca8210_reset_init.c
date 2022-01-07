
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_platform_data {int gpio_reset; } ;


 int dev_crit (TYPE_1__*,char*,int ) ;
 int gpio_direction_output (int ,int) ;
 int of_get_named_gpio (int ,char*,int ) ;

__attribute__((used)) static int ca8210_reset_init(struct spi_device *spi)
{
 int ret;
 struct ca8210_platform_data *pdata = spi->dev.platform_data;

 pdata->gpio_reset = of_get_named_gpio(
  spi->dev.of_node,
  "reset-gpio",
  0
 );

 ret = gpio_direction_output(pdata->gpio_reset, 1);
 if (ret < 0) {
  dev_crit(
   &spi->dev,
   "Reset GPIO %d did not set to output mode\n",
   pdata->gpio_reset
  );
 }

 return ret;
}
