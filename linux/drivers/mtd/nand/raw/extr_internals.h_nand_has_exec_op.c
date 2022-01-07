
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {TYPE_2__* controller; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int exec_op; } ;



__attribute__((used)) static inline bool nand_has_exec_op(struct nand_chip *chip)
{
 if (!chip->controller || !chip->controller->ops ||
     !chip->controller->ops->exec_op)
  return 0;

 return 1;
}
