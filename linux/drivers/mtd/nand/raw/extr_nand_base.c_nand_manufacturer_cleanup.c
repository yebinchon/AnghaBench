
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* desc; } ;
struct nand_chip {TYPE_3__ manufacturer; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* cleanup ) (struct nand_chip*) ;} ;


 int stub1 (struct nand_chip*) ;

__attribute__((used)) static void nand_manufacturer_cleanup(struct nand_chip *chip)
{

 if (chip->manufacturer.desc && chip->manufacturer.desc->ops &&
     chip->manufacturer.desc->ops->cleanup)
  chip->manufacturer.desc->ops->cleanup(chip);
}
