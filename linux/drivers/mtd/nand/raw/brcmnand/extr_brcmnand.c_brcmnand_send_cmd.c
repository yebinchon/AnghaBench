
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int cmd_pending; int dev; } ;


 int BRCMNAND_CMD_ADDRESS ;
 int BRCMNAND_CMD_START ;
 int BUG_ON (int) ;
 int NAND_CTRL_RDY ;
 int WARN_ON (int) ;
 int bcmnand_ctrl_poll_status (struct brcmnand_controller*,int ,int ,int ) ;
 int brcmnand_cmd_shift (struct brcmnand_controller*) ;
 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;
 int brcmnand_write_reg (struct brcmnand_controller*,int ,int) ;
 int dev_dbg (int ,char*,int,int ) ;
 int mb () ;

__attribute__((used)) static void brcmnand_send_cmd(struct brcmnand_host *host, int cmd)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 int ret;
 u64 cmd_addr;

 cmd_addr = brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);

 dev_dbg(ctrl->dev, "send native cmd %d addr 0x%llx\n", cmd, cmd_addr);

 BUG_ON(ctrl->cmd_pending != 0);
 ctrl->cmd_pending = cmd;

 ret = bcmnand_ctrl_poll_status(ctrl, NAND_CTRL_RDY, NAND_CTRL_RDY, 0);
 WARN_ON(ret);

 mb();
 brcmnand_write_reg(ctrl, BRCMNAND_CMD_START,
      cmd << brcmnand_cmd_shift(ctrl));
}
