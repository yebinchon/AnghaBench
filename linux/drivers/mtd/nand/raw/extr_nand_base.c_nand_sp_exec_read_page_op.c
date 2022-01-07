
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u8 ;
struct nand_sdr_timings {int tRR_min; int tR_max; int tWB_max; } ;
struct nand_operation {int ninstrs; } ;
struct TYPE_5__ {int naddrs; } ;
struct TYPE_4__ {int opcode; } ;
struct TYPE_6__ {TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {TYPE_3__ ctx; } ;
struct nand_chip {int options; int cur_cs; int data_interface; } ;
struct mtd_info {unsigned int writesize; } ;


 int NAND_BUSWIDTH_16 ;
 int NAND_CMD_READ0 ;
 int NAND_CMD_READ1 ;
 int NAND_CMD_READOOB ;
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
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int nand_sp_exec_read_page_op(struct nand_chip *chip, unsigned int page,
         unsigned int offset_in_page, void *buf,
         unsigned int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 const struct nand_sdr_timings *sdr =
  nand_get_sdr_timings(&chip->data_interface);
 u8 addrs[4];
 struct nand_op_instr instrs[] = {
  NAND_OP_CMD(NAND_CMD_READ0, 0),
  NAND_OP_ADDR(3, addrs, PSEC_TO_NSEC(sdr->tWB_max)),
  NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tR_max),
     PSEC_TO_NSEC(sdr->tRR_min)),
  NAND_OP_DATA_IN(len, buf, 0),
 };
 struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 int ret;


 if (!len)
  op.ninstrs--;

 if (offset_in_page >= mtd->writesize)
  instrs[0].ctx.cmd.opcode = NAND_CMD_READOOB;
 else if (offset_in_page >= 256 &&
   !(chip->options & NAND_BUSWIDTH_16))
  instrs[0].ctx.cmd.opcode = NAND_CMD_READ1;

 ret = nand_fill_column_cycles(chip, addrs, offset_in_page);
 if (ret < 0)
  return ret;

 addrs[1] = page;
 addrs[2] = page >> 8;

 if (chip->options & NAND_ROW_ADDR_3) {
  addrs[3] = page >> 16;
  instrs[1].ctx.addr.naddrs++;
 }

 return nand_exec_op(chip, &op);
}
