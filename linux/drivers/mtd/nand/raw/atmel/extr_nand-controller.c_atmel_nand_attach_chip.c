
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nand_chip {int controller; } ;
struct mtd_info {char* name; } ;
struct atmel_nand_controller {TYPE_4__* dev; TYPE_2__* caps; } ;
struct atmel_nand {TYPE_3__* cs; } ;
struct TYPE_10__ {int of_node; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {scalar_t__ legacy_of_bindings; TYPE_1__* ops; } ;
struct TYPE_7__ {int (* ecc_init ) (struct nand_chip*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_name (TYPE_4__*) ;
 char* devm_kasprintf (TYPE_4__*,int ,char*,int ,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;

__attribute__((used)) static int atmel_nand_attach_chip(struct nand_chip *chip)
{
 struct atmel_nand_controller *nc = to_nand_controller(chip->controller);
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 ret = nc->caps->ops->ecc_init(chip);
 if (ret)
  return ret;

 if (nc->caps->legacy_of_bindings || !nc->dev->of_node) {





  mtd->name = "atmel_nand";
 } else if (!mtd->name) {
  mtd->name = devm_kasprintf(nc->dev, GFP_KERNEL,
        "%s:nand.%d", dev_name(nc->dev),
        nand->cs[0].id);
  if (!mtd->name) {
   dev_err(nc->dev, "Failed to allocate mtd->name\n");
   return -ENOMEM;
  }
 }

 return 0;
}
