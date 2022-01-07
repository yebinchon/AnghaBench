
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa_info {scalar_t__ mtd; int num_subdev; TYPE_1__* subdev; } ;
struct flash_platform_data {int (* exit ) () ;} ;
struct TYPE_2__ {scalar_t__ mtd; } ;


 int kfree (struct sa_info*) ;
 int mtd_concat_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 int sa1100_destroy_subdev (TYPE_1__*) ;
 int stub1 () ;

__attribute__((used)) static void sa1100_destroy(struct sa_info *info, struct flash_platform_data *plat)
{
 int i;

 if (info->mtd) {
  mtd_device_unregister(info->mtd);
  if (info->mtd != info->subdev[0].mtd)
   mtd_concat_destroy(info->mtd);
 }

 for (i = info->num_subdev - 1; i >= 0; i--)
  sa1100_destroy_subdev(&info->subdev[i]);
 kfree(info);

 if (plat->exit)
  plat->exit();
}
