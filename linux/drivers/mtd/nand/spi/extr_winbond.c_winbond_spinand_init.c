
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spinand_device {int dummy; } ;
struct TYPE_2__ {unsigned int ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;


 int WINBOND_CFG_BUF_READ ;
 int spinand_select_target (struct spinand_device*,unsigned int) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;
 int spinand_upd_cfg (struct spinand_device*,int ,int ) ;

__attribute__((used)) static int winbond_spinand_init(struct spinand_device *spinand)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 unsigned int i;





 for (i = 0; i < nand->memorg.ntargets; i++) {
  spinand_select_target(spinand, i);
  spinand_upd_cfg(spinand, WINBOND_CFG_BUF_READ,
    WINBOND_CFG_BUF_READ);
 }

 return 0;
}
