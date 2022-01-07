
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int controller; } ;
struct marvell_nfc {scalar_t__ regs; int dev; } ;


 scalar_t__ NDCR ;
 int NDCR_ND_RUN ;
 int POLL_PERIOD ;
 int POLL_TIMEOUT ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int ,int ) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int marvell_nfc_wait_ndrun(struct nand_chip *chip)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 u32 val;
 int ret;





 ret = readl_relaxed_poll_timeout(nfc->regs + NDCR, val,
      (val & NDCR_ND_RUN) == 0,
      POLL_PERIOD, POLL_TIMEOUT);
 if (ret) {
  dev_err(nfc->dev, "Timeout on NAND controller run mode\n");
  writel_relaxed(readl(nfc->regs + NDCR) & ~NDCR_ND_RUN,
          nfc->regs + NDCR);
  return ret;
 }

 return 0;
}
