
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct nand_sdr_timings {int tCCS_min; } ;
struct nand_operation {int ninstrs; } ;
struct TYPE_4__ {int force_8bit; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct nand_op_instr {TYPE_2__ ctx; } ;
struct TYPE_6__ {int (* write_buf ) (struct nand_chip*,void const*,unsigned int) ;int (* cmdfunc ) (struct nand_chip*,int ,unsigned int,int) ;} ;
struct nand_chip {TYPE_3__ legacy; int cur_cs; int data_interface; } ;
struct mtd_info {unsigned int writesize; unsigned int oobsize; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int NAND_CMD_RNDIN ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_ADDR (int,int *,int ) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 struct nand_op_instr NAND_OP_DATA_OUT (unsigned int,void const*,int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 int nand_fill_column_cycles (struct nand_chip*,int *,unsigned int) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,unsigned int,int) ;
 int stub2 (struct nand_chip*,void const*,unsigned int) ;

int nand_change_write_column_op(struct nand_chip *chip,
    unsigned int offset_in_page,
    const void *buf, unsigned int len,
    bool force_8bit)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 if (len && !buf)
  return -EINVAL;

 if (offset_in_page + len > mtd->writesize + mtd->oobsize)
  return -EINVAL;


 if (mtd->writesize <= 512)
  return -ENOTSUPP;

 if (nand_has_exec_op(chip)) {
  const struct nand_sdr_timings *sdr =
   nand_get_sdr_timings(&chip->data_interface);
  u8 addrs[2];
  struct nand_op_instr instrs[] = {
   NAND_OP_CMD(NAND_CMD_RNDIN, 0),
   NAND_OP_ADDR(2, addrs, PSEC_TO_NSEC(sdr->tCCS_min)),
   NAND_OP_DATA_OUT(len, buf, 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
  int ret;

  ret = nand_fill_column_cycles(chip, addrs, offset_in_page);
  if (ret < 0)
   return ret;

  instrs[2].ctx.data.force_8bit = force_8bit;


  if (!len)
   op.ninstrs--;

  return nand_exec_op(chip, &op);
 }

 chip->legacy.cmdfunc(chip, NAND_CMD_RNDIN, offset_in_page, -1);
 if (len)
  chip->legacy.write_buf(chip, buf, len);

 return 0;
}
