
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int out; int in; } ;
struct TYPE_9__ {int force_8bit; int len; TYPE_3__ buf; } ;
struct TYPE_7__ {int naddrs; int * addrs; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_10__ {TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_5__ ctx; } ;
struct nand_chip {int options; } ;
struct denali_controller {int dummy; } ;


 int DENALI_MAP11_ADDR ;
 int DENALI_MAP11_CMD ;
 int DENALI_MAP11_DATA ;
 int EINVAL ;
 int NAND_BUSWIDTH_16 ;





 int WARN_ONCE (int,char*,int) ;
 int denali_exec_in (struct denali_controller*,int ,int ,int ,int) ;
 int denali_exec_out (struct denali_controller*,int ,int ,int ,int) ;
 int denali_exec_out8 (struct denali_controller*,int ,int *,int) ;
 int denali_exec_waitrdy (struct denali_controller*) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_exec_instr(struct nand_chip *chip,
        const struct nand_op_instr *instr)
{
 struct denali_controller *denali = to_denali_controller(chip);

 switch (instr->type) {
 case 131:
  denali_exec_out8(denali, DENALI_MAP11_CMD,
     &instr->ctx.cmd.opcode, 1);
  return 0;
 case 132:
  denali_exec_out8(denali, DENALI_MAP11_ADDR,
     instr->ctx.addr.addrs,
     instr->ctx.addr.naddrs);
  return 0;
 case 130:
  denali_exec_in(denali, DENALI_MAP11_DATA,
          instr->ctx.data.buf.in,
          instr->ctx.data.len,
          !instr->ctx.data.force_8bit &&
          chip->options & NAND_BUSWIDTH_16);
  return 0;
 case 129:
  denali_exec_out(denali, DENALI_MAP11_DATA,
    instr->ctx.data.buf.out,
    instr->ctx.data.len,
    !instr->ctx.data.force_8bit &&
    chip->options & NAND_BUSWIDTH_16);
  return 0;
 case 128:
  return denali_exec_waitrdy(denali);
 default:
  WARN_ONCE(1, "unsupported NAND instruction type: %d\n",
     instr->type);

  return -EINVAL;
 }
}
