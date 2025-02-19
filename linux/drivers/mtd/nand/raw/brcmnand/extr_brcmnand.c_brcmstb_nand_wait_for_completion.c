
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {scalar_t__ oops_panic_write; } ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int done; } ;


 int NAND_CTRL_RDY ;
 int NAND_POLL_STATUS_TIMEOUT_MS ;
 int bcmnand_ctrl_poll_status (struct brcmnand_controller*,int ,int ,int ) ;
 int disable_ctrl_irqs (struct brcmnand_controller*) ;
 unsigned long msecs_to_jiffies (int ) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static bool brcmstb_nand_wait_for_completion(struct nand_chip *chip)
{
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_controller *ctrl = host->ctrl;
 struct mtd_info *mtd = nand_to_mtd(chip);
 bool err = 0;
 int sts;

 if (mtd->oops_panic_write) {

  disable_ctrl_irqs(ctrl);
  sts = bcmnand_ctrl_poll_status(ctrl, NAND_CTRL_RDY,
            NAND_CTRL_RDY, 0);
  err = (sts < 0) ? 1 : 0;
 } else {
  unsigned long timeo = msecs_to_jiffies(
      NAND_POLL_STATUS_TIMEOUT_MS);

  sts = wait_for_completion_timeout(&ctrl->done, timeo);
  err = (sts <= 0) ? 1 : 0;
 }

 return err;
}
