
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct nand_sdr_timings {int tRR_min; int tR_max; int tWB_max; } ;
struct nand_operation {int ninstrs; } ;
struct TYPE_3__ {int naddrs; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct nand_op_instr {TYPE_2__ ctx; } ;
struct nand_chip {int options; int cur_cs; int data_interface; } ;


 int NAND_CMD_READ0 ;
 int NAND_CMD_READSTART ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_ADDR (int,unsigned int*,int ) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 struct nand_op_instr NAND_OP_DATA_IN (unsigned int,void*,int ) ;
 struct nand_op_instr NAND_OP_WAIT_RDY (int ,int ) ;
 int NAND_ROW_ADDR_3 ;
 int PSEC_TO_MSEC (int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 int nand_fill_column_cycles (struct nand_chip*,unsigned int*,unsigned int) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;

__attribute__((used)) static int nand_lp_exec_read_page_op(struct nand_chip *chip, unsigned int page,
         unsigned int offset_in_page, void *buf,
         unsigned int len)
{
 const struct nand_sdr_timings *sdr =
  nand_get_sdr_timings(&chip->data_interface);
 u8 addrs[5];
 struct nand_op_instr instrs[] = {
  NAND_OP_CMD(NAND_CMD_READ0, 0),
  NAND_OP_ADDR(4, addrs, 0),
  NAND_OP_CMD(NAND_CMD_READSTART, PSEC_TO_NSEC(sdr->tWB_max)),
  NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tR_max),
     PSEC_TO_NSEC(sdr->tRR_min)),
  NAND_OP_DATA_IN(len, buf, 0),
 };
 struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 int ret;


 if (!len)
  op.ninstrs--;

 ret = nand_fill_column_cycles(chip, addrs, offset_in_page);
 if (ret < 0)
  return ret;

 addrs[2] = page;
 addrs[3] = page >> 8;

 if (chip->options & NAND_ROW_ADDR_3) {
  addrs[4] = page >> 16;
  instrs[1].ctx.addr.naddrs++;
 }

 return nand_exec_op(chip, &op);
}
