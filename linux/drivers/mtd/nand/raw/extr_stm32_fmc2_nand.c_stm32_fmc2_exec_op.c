
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


struct stm32_fmc2_nfc {size_t cs_sel; int * addr_base; int * cmd_base; } ;
struct nand_operation {unsigned int ninstrs; struct nand_op_instr* instrs; int cs; } ;
struct TYPE_11__ {int timeout_ms; } ;
struct TYPE_9__ {int out; int in; } ;
struct TYPE_10__ {int force_8bit; int len; TYPE_3__ buf; } ;
struct TYPE_8__ {unsigned int naddrs; int * addrs; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_6__ ctx; } ;
struct nand_chip {int controller; } ;







 int nand_soft_waitrdy (struct nand_chip*,int ) ;
 int stm32_fmc2_read_data (struct nand_chip*,int ,int ,int ) ;
 int stm32_fmc2_select_chip (struct nand_chip*,int ) ;
 int stm32_fmc2_write_data (struct nand_chip*,int ,int ,int ) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;
 int writeb_relaxed (int ,int ) ;

__attribute__((used)) static int stm32_fmc2_exec_op(struct nand_chip *chip,
         const struct nand_operation *op,
         bool check_only)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);
 const struct nand_op_instr *instr = ((void*)0);
 unsigned int op_id, i;
 int ret;

 ret = stm32_fmc2_select_chip(chip, op->cs);
 if (ret)
  return ret;

 if (check_only)
  return ret;

 for (op_id = 0; op_id < op->ninstrs; op_id++) {
  instr = &op->instrs[op_id];

  switch (instr->type) {
  case 131:
   writeb_relaxed(instr->ctx.cmd.opcode,
           fmc2->cmd_base[fmc2->cs_sel]);
   break;

  case 132:
   for (i = 0; i < instr->ctx.addr.naddrs; i++)
    writeb_relaxed(instr->ctx.addr.addrs[i],
            fmc2->addr_base[fmc2->cs_sel]);
   break;

  case 130:
   stm32_fmc2_read_data(chip, instr->ctx.data.buf.in,
          instr->ctx.data.len,
          instr->ctx.data.force_8bit);
   break;

  case 129:
   stm32_fmc2_write_data(chip, instr->ctx.data.buf.out,
           instr->ctx.data.len,
           instr->ctx.data.force_8bit);
   break;

  case 128:
   ret = nand_soft_waitrdy(chip,
      instr->ctx.waitrdy.timeout_ms);
   break;
  }
 }

 return ret;
}
