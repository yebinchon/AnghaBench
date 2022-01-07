
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_sdr_timings {int tPROG_max; int tWB_max; } ;
struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* waitfunc ) (struct nand_chip*) ;int (* cmdfunc ) (struct nand_chip*,int ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; int data_interface; } ;


 int EIO ;
 int NAND_CMD_PAGEPROG ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 struct nand_op_instr NAND_OP_WAIT_RDY (int ,int ) ;
 int NAND_STATUS_FAIL ;
 int PSEC_TO_MSEC (int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int nand_status_op (struct nand_chip*,int*) ;
 int stub1 (struct nand_chip*,int ,int,int) ;
 int stub2 (struct nand_chip*) ;

int nand_prog_page_end_op(struct nand_chip *chip)
{
 int ret;
 u8 status;

 if (nand_has_exec_op(chip)) {
  const struct nand_sdr_timings *sdr =
   nand_get_sdr_timings(&chip->data_interface);
  struct nand_op_instr instrs[] = {
   NAND_OP_CMD(NAND_CMD_PAGEPROG,
        PSEC_TO_NSEC(sdr->tWB_max)),
   NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tPROG_max), 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  ret = nand_exec_op(chip, &op);
  if (ret)
   return ret;

  ret = nand_status_op(chip, &status);
  if (ret)
   return ret;
 } else {
  chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
  ret = chip->legacy.waitfunc(chip);
  if (ret < 0)
   return ret;

  status = ret;
 }

 if (status & NAND_STATUS_FAIL)
  return -EIO;

 return 0;
}
