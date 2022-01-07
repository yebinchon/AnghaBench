
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int controller; } ;
struct marvell_nfc {scalar_t__ regs; int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ NDCR ;
 int NDCR_ND_RUN ;
 scalar_t__ NDSR ;
 int NDSR_WRCMDREQ ;
 int POLL_PERIOD ;
 int POLL_TIMEOUT ;
 int dev_err (int ,char*) ;
 int marvell_nfc_wait_ndrun (struct nand_chip*) ;
 int readl (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int ,int ) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int marvell_nfc_prepare_cmd(struct nand_chip *chip)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 u32 ndcr, val;
 int ret;


 ret = marvell_nfc_wait_ndrun(chip);
 if (ret) {
  dev_err(nfc->dev, "Last operation did not succeed\n");
  return ret;
 }

 ndcr = readl_relaxed(nfc->regs + NDCR);
 writel_relaxed(readl(nfc->regs + NDSR), nfc->regs + NDSR);


 writel_relaxed(ndcr | NDCR_ND_RUN, nfc->regs + NDCR);
 ret = readl_relaxed_poll_timeout(nfc->regs + NDSR, val,
      val & NDSR_WRCMDREQ,
      POLL_PERIOD, POLL_TIMEOUT);
 if (ret) {
  dev_err(nfc->dev, "Timeout on WRCMDRE\n");
  return -ETIMEDOUT;
 }


 writel_relaxed(NDSR_WRCMDREQ, nfc->regs + NDSR);

 return 0;
}
