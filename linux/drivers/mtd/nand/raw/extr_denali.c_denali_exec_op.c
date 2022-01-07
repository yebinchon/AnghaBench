
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_operation {int ninstrs; int * instrs; int cs; } ;
struct nand_chip {int dummy; } ;


 int denali_exec_instr (struct nand_chip*,int *) ;
 int denali_reset_irq (int ) ;
 int denali_select_target (struct nand_chip*,int ) ;
 int to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_exec_op(struct nand_chip *chip,
     const struct nand_operation *op, bool check_only)
{
 int i, ret;

 if (check_only)
  return 0;

 denali_select_target(chip, op->cs);





 denali_reset_irq(to_denali_controller(chip));

 for (i = 0; i < op->ninstrs; i++) {
  ret = denali_exec_instr(chip, &op->instrs[i]);
  if (ret)
   return ret;
 }

 return 0;
}
