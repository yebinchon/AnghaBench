
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_sdr_timings {int tADL_min; } ;
struct nand_operation {int ninstrs; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* read_byte ) (struct nand_chip*) ;int (* cmdfunc ) (struct nand_chip*,int ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; int data_interface; } ;


 int NAND_CMD_STATUS ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_8BIT_DATA_IN (int,int *,int ) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int,int) ;
 int stub2 (struct nand_chip*) ;

int nand_status_op(struct nand_chip *chip, u8 *status)
{
 if (nand_has_exec_op(chip)) {
  const struct nand_sdr_timings *sdr =
   nand_get_sdr_timings(&chip->data_interface);
  struct nand_op_instr instrs[] = {
   NAND_OP_CMD(NAND_CMD_STATUS,
        PSEC_TO_NSEC(sdr->tADL_min)),
   NAND_OP_8BIT_DATA_IN(1, status, 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  if (!status)
   op.ninstrs--;

  return nand_exec_op(chip, &op);
 }

 chip->legacy.cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
 if (status)
  *status = chip->legacy.read_byte(chip);

 return 0;
}
