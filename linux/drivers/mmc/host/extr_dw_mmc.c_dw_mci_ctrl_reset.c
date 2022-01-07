
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mci {int dev; scalar_t__ regs; } ;


 int CTRL ;
 scalar_t__ SDMMC_CTRL ;
 int USEC_PER_MSEC ;
 int dev_err (int ,char*,int) ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 scalar_t__ readl_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static bool dw_mci_ctrl_reset(struct dw_mci *host, u32 reset)
{
 u32 ctrl;

 ctrl = mci_readl(host, CTRL);
 ctrl |= reset;
 mci_writel(host, CTRL, ctrl);


 if (readl_poll_timeout_atomic(host->regs + SDMMC_CTRL, ctrl,
          !(ctrl & reset),
          1, 500 * USEC_PER_MSEC)) {
  dev_err(host->dev,
   "Timeout resetting block (ctrl reset %#x)\n",
   ctrl & reset);
  return 0;
 }

 return 1;
}
