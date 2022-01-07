
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mxic_nand_ctlr {int dev; int complete; } ;


 int ETIMEDOUT ;
 int IRQ_TIMEOUT ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 struct mxic_nand_ctlr* nand_get_controller_data (struct nand_chip*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int mxic_nfc_wait_ready(struct nand_chip *chip)
{
 struct mxic_nand_ctlr *nfc = nand_get_controller_data(chip);
 int ret;

 ret = wait_for_completion_timeout(&nfc->complete,
       msecs_to_jiffies(IRQ_TIMEOUT));
 if (!ret) {
  dev_err(nfc->dev, "nand device timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}
