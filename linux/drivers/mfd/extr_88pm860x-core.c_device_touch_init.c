
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pm860x_touch_pdata {int dummy; } ;
struct pm860x_platform_data {int touch; } ;
struct pm860x_chip {int dev; int irq_base; } ;
struct TYPE_6__ {int pdata_size; struct TYPE_6__* resources; int num_resources; int platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (int ,char*) ;
 int mfd_add_devices (int ,int ,TYPE_1__*,int ,TYPE_1__*,int ,int *) ;
 TYPE_1__* touch_devs ;
 TYPE_1__* touch_resources ;

__attribute__((used)) static void device_touch_init(struct pm860x_chip *chip,
     struct pm860x_platform_data *pdata)
{
 int ret;

 if (pdata == ((void*)0))
  return;

 touch_devs[0].platform_data = pdata->touch;
 touch_devs[0].pdata_size = sizeof(struct pm860x_touch_pdata);
 touch_devs[0].num_resources = ARRAY_SIZE(touch_resources);
 touch_devs[0].resources = &touch_resources[0];
 ret = mfd_add_devices(chip->dev, 0, &touch_devs[0],
         ARRAY_SIZE(touch_devs), &touch_resources[0],
         chip->irq_base, ((void*)0));
 if (ret < 0)
  dev_err(chip->dev, "Failed to add touch subdev\n");
}
