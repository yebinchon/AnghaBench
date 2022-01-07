
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_platform_data {int dummy; } ;
struct pm80x_chip {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int dev_err (int ,char*) ;
 int mfd_add_devices (int ,int ,int *,int ,int *,int ,int *) ;
 int * onkey_devs ;
 int * onkey_resources ;

__attribute__((used)) static int device_onkey_init(struct pm80x_chip *chip,
    struct pm80x_platform_data *pdata)
{
 int ret;

 ret = mfd_add_devices(chip->dev, 0, &onkey_devs[0],
         ARRAY_SIZE(onkey_devs), &onkey_resources[0], 0,
         ((void*)0));
 if (ret) {
  dev_err(chip->dev, "Failed to add onkey subdev\n");
  return ret;
 }

 return 0;
}
