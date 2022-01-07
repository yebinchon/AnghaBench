
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spinand_device {TYPE_2__* manufacturer; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {void (* cleanup ) (struct spinand_device*) ;} ;


 void stub1 (struct spinand_device*) ;

__attribute__((used)) static void spinand_manufacturer_cleanup(struct spinand_device *spinand)
{

 if (spinand->manufacturer->ops->cleanup)
  return spinand->manufacturer->ops->cleanup(spinand);
}
