
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct nand_operation {int dummy; } ;
struct TYPE_4__ {int force_8bit; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct nand_op_instr {TYPE_2__ ctx; } ;
struct TYPE_6__ {int (* read_buf ) (struct nand_chip*,void*,unsigned int) ;int (* read_byte ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_3__ legacy; int cur_cs; } ;


 int EINVAL ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_DATA_IN (unsigned int,void*,int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int stub1 (struct nand_chip*) ;
 int stub2 (struct nand_chip*,void*,unsigned int) ;

int nand_read_data_op(struct nand_chip *chip, void *buf, unsigned int len,
        bool force_8bit)
{
 if (!len || !buf)
  return -EINVAL;

 if (nand_has_exec_op(chip)) {
  struct nand_op_instr instrs[] = {
   NAND_OP_DATA_IN(len, buf, 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  instrs[0].ctx.data.force_8bit = force_8bit;

  return nand_exec_op(chip, &op);
 }

 if (force_8bit) {
  u8 *p = buf;
  unsigned int i;

  for (i = 0; i < len; i++)
   p[i] = chip->legacy.read_byte(chip);
 } else {
  chip->legacy.read_buf(chip, buf, len);
 }

 return 0;
}
