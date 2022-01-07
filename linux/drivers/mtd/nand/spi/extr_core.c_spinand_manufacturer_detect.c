
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spinand_device {TYPE_2__* manufacturer; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* detect ) (struct spinand_device*) ;} ;


 unsigned int ARRAY_SIZE (TYPE_2__**) ;
 int ENOTSUPP ;
 TYPE_2__** spinand_manufacturers ;
 int stub1 (struct spinand_device*) ;

__attribute__((used)) static int spinand_manufacturer_detect(struct spinand_device *spinand)
{
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(spinand_manufacturers); i++) {
  ret = spinand_manufacturers[i]->ops->detect(spinand);
  if (ret > 0) {
   spinand->manufacturer = spinand_manufacturers[i];
   return 0;
  } else if (ret < 0) {
   return ret;
  }
 }

 return -ENOTSUPP;
}
