
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct spinand_device {scalar_t__ cur_target; scalar_t__* cfg_cache; } ;
struct TYPE_2__ {scalar_t__ ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;


 int EINVAL ;
 int REG_CFG ;
 scalar_t__ WARN_ON (int) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;
 int spinand_write_reg_op (struct spinand_device*,int ,scalar_t__) ;

__attribute__((used)) static int spinand_set_cfg(struct spinand_device *spinand, u8 cfg)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 int ret;

 if (WARN_ON(spinand->cur_target < 0 ||
      spinand->cur_target >= nand->memorg.ntargets))
  return -EINVAL;

 if (spinand->cfg_cache[spinand->cur_target] == cfg)
  return 0;

 ret = spinand_write_reg_op(spinand, REG_CFG, cfg);
 if (ret)
  return ret;

 spinand->cfg_cache[spinand->cur_target] = cfg;
 return 0;
}
