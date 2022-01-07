
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lm3533_platform_data {int num_leds; int * leds; } ;
struct lm3533 {int have_leds; int dev; } ;
struct TYPE_4__ {int pdata_size; int * platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (int ,char*) ;
 struct lm3533_platform_data* dev_get_platdata (int ) ;
 TYPE_1__* lm3533_led_devs ;
 int mfd_add_devices (int ,int ,TYPE_1__*,int,int *,int ,int *) ;

__attribute__((used)) static int lm3533_device_led_init(struct lm3533 *lm3533)
{
 struct lm3533_platform_data *pdata = dev_get_platdata(lm3533->dev);
 int i;
 int ret;

 if (!pdata->leds || pdata->num_leds == 0)
  return 0;

 if (pdata->num_leds > ARRAY_SIZE(lm3533_led_devs))
  pdata->num_leds = ARRAY_SIZE(lm3533_led_devs);

 for (i = 0; i < pdata->num_leds; ++i) {
  lm3533_led_devs[i].platform_data = &pdata->leds[i];
  lm3533_led_devs[i].pdata_size = sizeof(pdata->leds[i]);
 }

 ret = mfd_add_devices(lm3533->dev, 0, lm3533_led_devs,
         pdata->num_leds, ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(lm3533->dev, "failed to add LED devices\n");
  return ret;
 }

 lm3533->have_leds = 1;

 return 0;
}
