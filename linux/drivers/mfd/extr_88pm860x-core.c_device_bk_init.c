
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pm860x_platform_data {int num_backlights; int * backlight; } ;
struct pm860x_chip {int dev; } ;
struct pm860x_backlight_pdata {int dummy; } ;
struct TYPE_4__ {int pdata_size; int * platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* bk_devs ;
 int dev_err (int ,char*) ;
 int mfd_add_devices (int ,int ,TYPE_1__*,int,int *,int ,int *) ;

__attribute__((used)) static void device_bk_init(struct pm860x_chip *chip,
         struct pm860x_platform_data *pdata)
{
 int ret, i;

 if (pdata && pdata->backlight) {
  if (pdata->num_backlights > ARRAY_SIZE(bk_devs))
   pdata->num_backlights = ARRAY_SIZE(bk_devs);
  for (i = 0; i < pdata->num_backlights; i++) {
   bk_devs[i].platform_data = &pdata->backlight[i];
   bk_devs[i].pdata_size =
    sizeof(struct pm860x_backlight_pdata);
  }
 }
 ret = mfd_add_devices(chip->dev, 0, bk_devs,
         ARRAY_SIZE(bk_devs), ((void*)0), 0, ((void*)0));
 if (ret < 0)
  dev_err(chip->dev, "Failed to add backlight subdev\n");
}
