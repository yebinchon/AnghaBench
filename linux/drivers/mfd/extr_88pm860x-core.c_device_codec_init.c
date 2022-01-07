
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pm860x_platform_data {int dummy; } ;
struct pm860x_chip {int dev; } ;
struct TYPE_6__ {struct TYPE_6__* resources; int num_resources; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* codec_devs ;
 TYPE_1__* codec_resources ;
 int dev_err (int ,char*) ;
 int mfd_add_devices (int ,int ,TYPE_1__*,int ,TYPE_1__*,int ,int *) ;

__attribute__((used)) static void device_codec_init(struct pm860x_chip *chip,
     struct pm860x_platform_data *pdata)
{
 int ret;

 codec_devs[0].num_resources = ARRAY_SIZE(codec_resources);
 codec_devs[0].resources = &codec_resources[0],
 ret = mfd_add_devices(chip->dev, 0, &codec_devs[0],
         ARRAY_SIZE(codec_devs), &codec_resources[0], 0,
         ((void*)0));
 if (ret < 0)
  dev_err(chip->dev, "Failed to add codec subdev\n");
}
