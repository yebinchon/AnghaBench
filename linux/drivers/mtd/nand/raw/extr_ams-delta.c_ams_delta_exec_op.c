
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


struct nand_operation {int ninstrs; struct nand_op_instr const* instrs; } ;
struct TYPE_11__ {int timeout_ms; } ;
struct TYPE_9__ {int * out; int in; } ;
struct TYPE_10__ {int len; TYPE_3__ buf; } ;
struct TYPE_8__ {int naddrs; int * addrs; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
typedef struct nand_op_instr {int type; TYPE_6__ ctx; } const nand_op_instr ;
struct nand_chip {int dummy; } ;
struct ams_delta_nand {int gpiod_rdy; int gpiod_ale; int gpiod_cle; } ;







 int ams_delta_ctrl_cs (struct ams_delta_nand*,int) ;
 int ams_delta_read_buf (struct ams_delta_nand*,int ,int) ;
 int ams_delta_write_buf (struct ams_delta_nand*,int *,int) ;
 int gpiod_set_value (int ,int) ;
 struct ams_delta_nand* nand_get_controller_data (struct nand_chip*) ;
 int nand_gpio_waitrdy (struct nand_chip*,int ,int ) ;
 int nand_soft_waitrdy (struct nand_chip*,int ) ;

__attribute__((used)) static int ams_delta_exec_op(struct nand_chip *this,
        const struct nand_operation *op, bool check_only)
{
 struct ams_delta_nand *priv = nand_get_controller_data(this);
 const struct nand_op_instr *instr;
 int ret = 0;

 if (check_only)
  return 0;

 ams_delta_ctrl_cs(priv, 1);

 for (instr = op->instrs; instr < op->instrs + op->ninstrs; instr++) {
  switch (instr->type) {
  case 131:
   gpiod_set_value(priv->gpiod_cle, 1);
   ams_delta_write_buf(priv, &instr->ctx.cmd.opcode, 1);
   gpiod_set_value(priv->gpiod_cle, 0);
   break;

  case 132:
   gpiod_set_value(priv->gpiod_ale, 1);
   ams_delta_write_buf(priv, instr->ctx.addr.addrs,
         instr->ctx.addr.naddrs);
   gpiod_set_value(priv->gpiod_ale, 0);
   break;

  case 130:
   ams_delta_read_buf(priv, instr->ctx.data.buf.in,
        instr->ctx.data.len);
   break;

  case 129:
   ams_delta_write_buf(priv, instr->ctx.data.buf.out,
         instr->ctx.data.len);
   break;

  case 128:
   ret = priv->gpiod_rdy ?
         nand_gpio_waitrdy(this, priv->gpiod_rdy,
      instr->ctx.waitrdy.timeout_ms) :
         nand_soft_waitrdy(this,
      instr->ctx.waitrdy.timeout_ms);
   break;
  }

  if (ret)
   break;
 }

 ams_delta_ctrl_cs(priv, 0);

 return ret;
}
