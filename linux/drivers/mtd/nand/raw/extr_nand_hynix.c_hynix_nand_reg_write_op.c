
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* write_byte ) (struct nand_chip*,int) ;int (* cmdfunc ) (struct nand_chip*,int ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; } ;


 int NAND_CMD_NONE ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_8BIT_DATA_OUT (int,int*,int ) ;
 struct nand_op_instr NAND_OP_ADDR (int,int*,int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int,int) ;
 int stub2 (struct nand_chip*,int) ;

__attribute__((used)) static int hynix_nand_reg_write_op(struct nand_chip *chip, u8 addr, u8 val)
{
 u16 column = ((u16)addr << 8) | addr;

 if (nand_has_exec_op(chip)) {
  struct nand_op_instr instrs[] = {
   NAND_OP_ADDR(1, &addr, 0),
   NAND_OP_8BIT_DATA_OUT(1, &val, 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  return nand_exec_op(chip, &op);
 }

 chip->legacy.cmdfunc(chip, NAND_CMD_NONE, column, -1);
 chip->legacy.write_byte(chip, val);

 return 0;
}
