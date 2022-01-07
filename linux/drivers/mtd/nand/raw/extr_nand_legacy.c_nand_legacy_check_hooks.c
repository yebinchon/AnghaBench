
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd_ctrl; int select_chip; int cmdfunc; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int EINVAL ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int pr_err (char*) ;

int nand_legacy_check_hooks(struct nand_chip *chip)
{




 if (nand_has_exec_op(chip))
  return 0;






 if ((!chip->legacy.cmdfunc || !chip->legacy.select_chip) &&
     !chip->legacy.cmd_ctrl) {
  pr_err("->legacy.cmd_ctrl() should be provided\n");
  return -EINVAL;
 }

 return 0;
}
