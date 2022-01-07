
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spinand_device {scalar_t__ cur_target; int * cfg_cache; } ;
struct TYPE_2__ {scalar_t__ ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int spinand_get_cfg(struct spinand_device *spinand, u8 *cfg)
{
 struct nand_device *nand = spinand_to_nand(spinand);

 if (WARN_ON(spinand->cur_target < 0 ||
      spinand->cur_target >= nand->memorg.ntargets))
  return -EINVAL;

 *cfg = spinand->cfg_cache[spinand->cur_target];
 return 0;
}
