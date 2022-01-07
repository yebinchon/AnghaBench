
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nand_operation {unsigned int ninstrs; struct nand_op_instr* instrs; } ;
struct TYPE_11__ {int timeout_ms; } ;
struct TYPE_9__ {int out; int in; } ;
struct TYPE_10__ {int len; TYPE_3__ buf; } ;
struct TYPE_8__ {int naddrs; int * addrs; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_6__ ctx; } ;
struct nand_chip {int dummy; } ;
struct fsmc_nand_data {int mode; int addr_va; int cmd_va; } ;







 int USE_DMA_ACCESS ;
 int fsmc_read_buf (struct fsmc_nand_data*,int ,int ) ;
 int fsmc_read_buf_dma (struct fsmc_nand_data*,int ,int ) ;
 int fsmc_write_buf (struct fsmc_nand_data*,int ,int ) ;
 int fsmc_write_buf_dma (struct fsmc_nand_data*,int ,int ) ;
 int nand_op_trace (char*,struct nand_op_instr const*) ;
 int nand_soft_waitrdy (struct nand_chip*,int ) ;
 struct fsmc_nand_data* nand_to_fsmc (struct nand_chip*) ;
 int pr_debug (char*,unsigned int) ;
 int writeb_relaxed (int ,int ) ;

__attribute__((used)) static int fsmc_exec_op(struct nand_chip *chip, const struct nand_operation *op,
   bool check_only)
{
 struct fsmc_nand_data *host = nand_to_fsmc(chip);
 const struct nand_op_instr *instr = ((void*)0);
 int ret = 0;
 unsigned int op_id;
 int i;

 pr_debug("Executing operation [%d instructions]:\n", op->ninstrs);

 for (op_id = 0; op_id < op->ninstrs; op_id++) {
  instr = &op->instrs[op_id];

  nand_op_trace("  ", instr);

  switch (instr->type) {
  case 131:
   writeb_relaxed(instr->ctx.cmd.opcode, host->cmd_va);
   break;

  case 132:
   for (i = 0; i < instr->ctx.addr.naddrs; i++)
    writeb_relaxed(instr->ctx.addr.addrs[i],
            host->addr_va);
   break;

  case 130:
   if (host->mode == USE_DMA_ACCESS)
    fsmc_read_buf_dma(host, instr->ctx.data.buf.in,
        instr->ctx.data.len);
   else
    fsmc_read_buf(host, instr->ctx.data.buf.in,
           instr->ctx.data.len);
   break;

  case 129:
   if (host->mode == USE_DMA_ACCESS)
    fsmc_write_buf_dma(host,
         instr->ctx.data.buf.out,
         instr->ctx.data.len);
   else
    fsmc_write_buf(host, instr->ctx.data.buf.out,
            instr->ctx.data.len);
   break;

  case 128:
   ret = nand_soft_waitrdy(chip,
      instr->ctx.waitrdy.timeout_ms);
   break;
  }
 }

 return ret;
}
