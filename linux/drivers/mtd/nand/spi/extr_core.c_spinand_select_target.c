
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spinand_device {unsigned int cur_target; int (* select_target ) (struct spinand_device*,unsigned int) ;} ;
struct TYPE_2__ {unsigned int ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;
 int stub1 (struct spinand_device*,unsigned int) ;

int spinand_select_target(struct spinand_device *spinand, unsigned int target)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 int ret;

 if (WARN_ON(target >= nand->memorg.ntargets))
  return -EINVAL;

 if (spinand->cur_target == target)
  return 0;

 if (nand->memorg.ntargets == 1) {
  spinand->cur_target = target;
  return 0;
 }

 ret = spinand->select_target(spinand, target);
 if (ret)
  return ret;

 spinand->cur_target = target;
 return 0;
}
