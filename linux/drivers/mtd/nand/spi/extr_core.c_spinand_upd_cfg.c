
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int spinand_get_cfg (struct spinand_device*,int *) ;
 int spinand_set_cfg (struct spinand_device*,int ) ;

int spinand_upd_cfg(struct spinand_device *spinand, u8 mask, u8 val)
{
 int ret;
 u8 cfg;

 ret = spinand_get_cfg(spinand, &cfg);
 if (ret)
  return ret;

 cfg &= ~mask;
 cfg |= val;

 return spinand_set_cfg(spinand, cfg);
}
