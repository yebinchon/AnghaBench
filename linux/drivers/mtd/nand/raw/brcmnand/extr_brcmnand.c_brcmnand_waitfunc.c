
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int dummy; } ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {scalar_t__ cmd_pending; int dev; } ;


 int BRCMNAND_CMD_START ;
 int BRCMNAND_INTFC_STATUS ;
 int INTFC_FLASH_STATUS ;
 int brcmnand_cmd_shift (struct brcmnand_controller*) ;
 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;
 int brcmstb_nand_wait_for_completion (struct nand_chip*) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err_ratelimited (int ,char*,int) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_waitfunc(struct nand_chip *chip)
{
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_controller *ctrl = host->ctrl;
 bool err = 0;

 dev_dbg(ctrl->dev, "wait on native cmd %d\n", ctrl->cmd_pending);
 if (ctrl->cmd_pending)
  err = brcmstb_nand_wait_for_completion(chip);

 if (err) {
  u32 cmd = brcmnand_read_reg(ctrl, BRCMNAND_CMD_START)
     >> brcmnand_cmd_shift(ctrl);

  dev_err_ratelimited(ctrl->dev,
   "timeout waiting for command %#02x\n", cmd);
  dev_err_ratelimited(ctrl->dev, "intfc status %08x\n",
   brcmnand_read_reg(ctrl, BRCMNAND_INTFC_STATUS));
 }
 ctrl->cmd_pending = 0;
 return brcmnand_read_reg(ctrl, BRCMNAND_INTFC_STATUS) &
     INTFC_FLASH_STATUS;
}
