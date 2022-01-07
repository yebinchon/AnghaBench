
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {TYPE_2__* controller; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* detach_chip ) (struct nand_chip*) ;} ;


 int stub1 (struct nand_chip*) ;

__attribute__((used)) static void nand_detach(struct nand_chip *chip)
{
 if (chip->controller->ops && chip->controller->ops->detach_chip)
  chip->controller->ops->detach_chip(chip);
}
