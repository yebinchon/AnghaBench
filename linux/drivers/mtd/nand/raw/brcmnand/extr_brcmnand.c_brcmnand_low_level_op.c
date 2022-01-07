
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int dummy; } ;
struct brcmnand_host {struct brcmnand_controller* ctrl; struct nand_chip chip; } ;
struct brcmnand_controller {int dev; } ;
typedef enum brcmnand_llop_type { ____Placeholder_brcmnand_llop_type } brcmnand_llop_type ;


 int BRCMNAND_LL_OP ;
 int CMD_LOW_LEVEL_OP ;
 int LLOP_ALE ;
 int LLOP_CLE ;
 int LLOP_DATA_MASK ;
 int LLOP_RE ;
 int LLOP_RETURN_IDLE ;
 int LLOP_WE ;




 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;
 int brcmnand_send_cmd (struct brcmnand_host*,int ) ;
 int brcmnand_waitfunc (struct nand_chip*) ;
 int brcmnand_write_reg (struct brcmnand_controller*,int ,int) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int brcmnand_low_level_op(struct brcmnand_host *host,
     enum brcmnand_llop_type type, u32 data,
     bool last_op)
{
 struct nand_chip *chip = &host->chip;
 struct brcmnand_controller *ctrl = host->ctrl;
 u32 tmp;

 tmp = data & LLOP_DATA_MASK;
 switch (type) {
 case 130:
  tmp |= LLOP_WE | LLOP_CLE;
  break;
 case 131:

  tmp |= LLOP_WE | LLOP_ALE;
  break;
 case 128:

  tmp |= LLOP_WE;
  break;
 case 129:

  tmp |= LLOP_RE;
  break;
 }
 if (last_op)

  tmp |= LLOP_RETURN_IDLE;

 dev_dbg(ctrl->dev, "ll_op cmd %#x\n", tmp);

 brcmnand_write_reg(ctrl, BRCMNAND_LL_OP, tmp);
 (void)brcmnand_read_reg(ctrl, BRCMNAND_LL_OP);

 brcmnand_send_cmd(host, CMD_LOW_LEVEL_OP);
 return brcmnand_waitfunc(chip);
}
