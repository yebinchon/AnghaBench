
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct nand_sdr_timings {int tPROG_max; int tWB_max; int tADL_min; } ;
struct nand_operation {scalar_t__ ninstrs; int instrs; } ;
struct TYPE_5__ {int opcode; } ;
struct TYPE_4__ {int naddrs; } ;
struct TYPE_6__ {TYPE_2__ cmd; TYPE_1__ addr; } ;
struct nand_op_instr {TYPE_3__ ctx; } ;
struct nand_chip {int options; int cur_cs; int data_interface; } ;
struct mtd_info {int writesize; } ;


 int NAND_BUSWIDTH_16 ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_READ0 ;
 int NAND_CMD_READ1 ;
 int NAND_CMD_READOOB ;
 int NAND_CMD_SEQIN ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_ADDR (int ,int*,int ) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 struct nand_op_instr NAND_OP_DATA_OUT (unsigned int,void const*,int ) ;
 struct nand_op_instr NAND_OP_WAIT_RDY (int ,int ) ;
 int NAND_ROW_ADDR_3 ;
 int PSEC_TO_MSEC (int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 int nand_fill_column_cycles (struct nand_chip*,int*,unsigned int) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 int nand_status_op (struct nand_chip*,int*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int nand_exec_prog_page_op(struct nand_chip *chip, unsigned int page,
      unsigned int offset_in_page, const void *buf,
      unsigned int len, bool prog)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 const struct nand_sdr_timings *sdr =
  nand_get_sdr_timings(&chip->data_interface);
 u8 addrs[5] = {};
 struct nand_op_instr instrs[] = {





  NAND_OP_CMD(NAND_CMD_READ0, 0),
  NAND_OP_CMD(NAND_CMD_SEQIN, 0),
  NAND_OP_ADDR(0, addrs, PSEC_TO_NSEC(sdr->tADL_min)),
  NAND_OP_DATA_OUT(len, buf, 0),
  NAND_OP_CMD(NAND_CMD_PAGEPROG, PSEC_TO_NSEC(sdr->tWB_max)),
  NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tPROG_max), 0),
 };
 struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 int naddrs = nand_fill_column_cycles(chip, addrs, offset_in_page);
 int ret;
 u8 status;

 if (naddrs < 0)
  return naddrs;

 addrs[naddrs++] = page;
 addrs[naddrs++] = page >> 8;
 if (chip->options & NAND_ROW_ADDR_3)
  addrs[naddrs++] = page >> 16;

 instrs[2].ctx.addr.naddrs = naddrs;


 if (!prog) {
  op.ninstrs -= 2;

  if (!len)
   op.ninstrs--;
 }

 if (mtd->writesize <= 512) {





  if (offset_in_page >= mtd->writesize)
   instrs[0].ctx.cmd.opcode = NAND_CMD_READOOB;
  else if (offset_in_page >= 256 &&
    !(chip->options & NAND_BUSWIDTH_16))
   instrs[0].ctx.cmd.opcode = NAND_CMD_READ1;
 } else {




  op.instrs++;
  op.ninstrs--;
 }

 ret = nand_exec_op(chip, &op);
 if (!prog || ret)
  return ret;

 ret = nand_status_op(chip, &status);
 if (ret)
  return ret;

 return status;
}
