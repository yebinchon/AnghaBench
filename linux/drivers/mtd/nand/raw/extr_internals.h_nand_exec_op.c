
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_operation {scalar_t__ cs; } ;
struct nand_chip {TYPE_2__* controller; int base; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* exec_op ) (struct nand_chip*,struct nand_operation const*,int) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ WARN_ON (int) ;
 int nand_has_exec_op (struct nand_chip*) ;
 scalar_t__ nanddev_ntargets (int *) ;
 int stub1 (struct nand_chip*,struct nand_operation const*,int) ;

__attribute__((used)) static inline int nand_exec_op(struct nand_chip *chip,
          const struct nand_operation *op)
{
 if (!nand_has_exec_op(chip))
  return -ENOTSUPP;

 if (WARN_ON(op->cs >= nanddev_ntargets(&chip->base)))
  return -EINVAL;

 return chip->controller->ops->exec_op(chip, op, 0);
}
