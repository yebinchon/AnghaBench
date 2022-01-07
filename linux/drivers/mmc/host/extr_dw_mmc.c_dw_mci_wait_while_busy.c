
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mci {int dev; scalar_t__ regs; } ;


 int SDMMC_CMD_PRV_DAT_WAIT ;
 int SDMMC_CMD_VOLT_SWITCH ;
 scalar_t__ SDMMC_STATUS ;
 int SDMMC_STATUS_BUSY ;
 int USEC_PER_MSEC ;
 int dev_err (int ,char*) ;
 scalar_t__ readl_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static void dw_mci_wait_while_busy(struct dw_mci *host, u32 cmd_flags)
{
 u32 status;
 if ((cmd_flags & SDMMC_CMD_PRV_DAT_WAIT) &&
     !(cmd_flags & SDMMC_CMD_VOLT_SWITCH)) {
  if (readl_poll_timeout_atomic(host->regs + SDMMC_STATUS,
           status,
           !(status & SDMMC_STATUS_BUSY),
           10, 500 * USEC_PER_MSEC))
   dev_err(host->dev, "Busy; trying anyway\n");
 }
}
