
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_sdr_timings {int tRR_min; int tR_max; int tWB_max; } ;
struct nand_operation {int ninstrs; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* read_byte ) (struct nand_chip*) ;int (* cmdfunc ) (struct nand_chip*,int ,int ,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; int data_interface; } ;


 int EINVAL ;
 int NAND_CMD_PARAM ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_8BIT_DATA_IN (unsigned int,void*,int ) ;
 struct nand_op_instr NAND_OP_ADDR (int,int *,int ) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 struct nand_op_instr NAND_OP_WAIT_RDY (int ,int ) ;
 int PSEC_TO_MSEC (int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int ,int) ;
 int stub2 (struct nand_chip*) ;

int nand_read_param_page_op(struct nand_chip *chip, u8 page, void *buf,
       unsigned int len)
{
 unsigned int i;
 u8 *p = buf;

 if (len && !buf)
  return -EINVAL;

 if (nand_has_exec_op(chip)) {
  const struct nand_sdr_timings *sdr =
   nand_get_sdr_timings(&chip->data_interface);
  struct nand_op_instr instrs[] = {
   NAND_OP_CMD(NAND_CMD_PARAM, 0),
   NAND_OP_ADDR(1, &page, PSEC_TO_NSEC(sdr->tWB_max)),
   NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tR_max),
      PSEC_TO_NSEC(sdr->tRR_min)),
   NAND_OP_8BIT_DATA_IN(len, buf, 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);


  if (!len)
   op.ninstrs--;

  return nand_exec_op(chip, &op);
 }

 chip->legacy.cmdfunc(chip, NAND_CMD_PARAM, page, -1);
 for (i = 0; i < len; i++)
  p[i] = chip->legacy.read_byte(chip);

 return 0;
}
