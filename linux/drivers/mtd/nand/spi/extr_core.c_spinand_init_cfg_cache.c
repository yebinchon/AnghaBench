
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spinand_device {int * cfg_cache; TYPE_3__* spimem; } ;
struct TYPE_4__ {unsigned int ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* spi; } ;
struct TYPE_5__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int REG_CFG ;
 int * devm_kcalloc (struct device*,unsigned int,int,int ) ;
 int spinand_read_reg_op (struct spinand_device*,int ,int *) ;
 int spinand_select_target (struct spinand_device*,unsigned int) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int spinand_init_cfg_cache(struct spinand_device *spinand)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 struct device *dev = &spinand->spimem->spi->dev;
 unsigned int target;
 int ret;

 spinand->cfg_cache = devm_kcalloc(dev,
       nand->memorg.ntargets,
       sizeof(*spinand->cfg_cache),
       GFP_KERNEL);
 if (!spinand->cfg_cache)
  return -ENOMEM;

 for (target = 0; target < nand->memorg.ntargets; target++) {
  ret = spinand_select_target(spinand, target);
  if (ret)
   return ret;





  ret = spinand_read_reg_op(spinand, REG_CFG,
       &spinand->cfg_cache[target]);
  if (ret)
   return ret;
 }

 return 0;
}
