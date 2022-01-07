
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int dummy; } ;


 int CFG_ECC_ENABLE ;
 int spinand_upd_cfg (struct spinand_device*,int ,int ) ;

__attribute__((used)) static int spinand_ecc_enable(struct spinand_device *spinand,
         bool enable)
{
 return spinand_upd_cfg(spinand, CFG_ECC_ENABLE,
          enable ? CFG_ECC_ENABLE : 0);
}
