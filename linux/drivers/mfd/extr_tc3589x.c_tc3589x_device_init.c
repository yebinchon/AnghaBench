
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc3589x {int dev; int domain; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int block; } ;


 int ARRAY_SIZE (int ) ;
 unsigned int TC3589x_BLOCK_GPIO ;
 unsigned int TC3589x_BLOCK_KEYPAD ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int mfd_add_devices (int ,int,int ,int ,int *,int ,int ) ;
 int tc3589x_dev_gpio ;
 int tc3589x_dev_keypad ;

__attribute__((used)) static int tc3589x_device_init(struct tc3589x *tc3589x)
{
 int ret = 0;
 unsigned int blocks = tc3589x->pdata->block;

 if (blocks & TC3589x_BLOCK_GPIO) {
  ret = mfd_add_devices(tc3589x->dev, -1, tc3589x_dev_gpio,
          ARRAY_SIZE(tc3589x_dev_gpio), ((void*)0),
          0, tc3589x->domain);
  if (ret) {
   dev_err(tc3589x->dev, "failed to add gpio child\n");
   return ret;
  }
  dev_info(tc3589x->dev, "added gpio block\n");
 }

 if (blocks & TC3589x_BLOCK_KEYPAD) {
  ret = mfd_add_devices(tc3589x->dev, -1, tc3589x_dev_keypad,
          ARRAY_SIZE(tc3589x_dev_keypad), ((void*)0),
          0, tc3589x->domain);
  if (ret) {
   dev_err(tc3589x->dev, "failed to keypad child\n");
   return ret;
  }
  dev_info(tc3589x->dev, "added keypad block\n");
 }

 return ret;
}
