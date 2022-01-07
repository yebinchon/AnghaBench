
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pm860x_platform_data {int num_leds; int * led; } ;
struct pm860x_led_pdata {int dummy; } ;
struct pm860x_chip {int dev; } ;
struct TYPE_4__ {int pdata_size; int * platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (int ,char*) ;
 TYPE_1__* led_devs ;
 int mfd_add_devices (int ,int ,TYPE_1__*,int,int *,int ,int *) ;

__attribute__((used)) static void device_led_init(struct pm860x_chip *chip,
          struct pm860x_platform_data *pdata)
{
 int ret, i;

 if (pdata && pdata->led) {
  if (pdata->num_leds > ARRAY_SIZE(led_devs))
   pdata->num_leds = ARRAY_SIZE(led_devs);
  for (i = 0; i < pdata->num_leds; i++) {
   led_devs[i].platform_data = &pdata->led[i];
   led_devs[i].pdata_size =
    sizeof(struct pm860x_led_pdata);
  }
 }
 ret = mfd_add_devices(chip->dev, 0, led_devs,
         ARRAY_SIZE(led_devs), ((void*)0), 0, ((void*)0));
 if (ret < 0) {
  dev_err(chip->dev, "Failed to add led subdev\n");
  return;
 }
}
