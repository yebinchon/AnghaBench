
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int controller; } ;
struct marvell_nfc {int dev; int complete; } ;


 int ETIMEDOUT ;
 unsigned int IRQ_TIMEOUT ;
 int NDCR_RDYM ;
 int NDSR_RDY (int) ;
 int dev_err (int ,char*) ;
 int init_completion (int *) ;
 int marvell_nfc_clear_int (struct marvell_nfc*,int) ;
 int marvell_nfc_disable_int (struct marvell_nfc*,int ) ;
 int marvell_nfc_enable_int (struct marvell_nfc*,int ) ;
 int msecs_to_jiffies (unsigned int) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int marvell_nfc_wait_op(struct nand_chip *chip, unsigned int timeout_ms)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 u32 pending;
 int ret;


 if (!timeout_ms)
  timeout_ms = IRQ_TIMEOUT;

 init_completion(&nfc->complete);

 marvell_nfc_enable_int(nfc, NDCR_RDYM);
 ret = wait_for_completion_timeout(&nfc->complete,
       msecs_to_jiffies(timeout_ms));
 marvell_nfc_disable_int(nfc, NDCR_RDYM);
 pending = marvell_nfc_clear_int(nfc, NDSR_RDY(0) | NDSR_RDY(1));





 if (ret && !pending) {
  dev_err(nfc->dev, "Timeout waiting for RB signal\n");
  return -ETIMEDOUT;
 }

 return 0;
}
