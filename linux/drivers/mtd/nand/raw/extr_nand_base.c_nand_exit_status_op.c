
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* cmdfunc ) (struct nand_chip*,int ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; } ;


 int NAND_CMD_READ0 ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int,int) ;

int nand_exit_status_op(struct nand_chip *chip)
{
 if (nand_has_exec_op(chip)) {
  struct nand_op_instr instrs[] = {
   NAND_OP_CMD(NAND_CMD_READ0, 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  return nand_exec_op(chip, &op);
 }

 chip->legacy.cmdfunc(chip, NAND_CMD_READ0, -1, -1);

 return 0;
}
