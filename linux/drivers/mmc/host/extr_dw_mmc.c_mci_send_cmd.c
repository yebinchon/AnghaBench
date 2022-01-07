
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct dw_mci_slot {TYPE_1__* mmc; struct dw_mci* host; } ;
struct dw_mci {scalar_t__ regs; } ;
struct TYPE_2__ {int class_dev; } ;


 int CMD ;
 int CMDARG ;
 scalar_t__ SDMMC_CMD ;
 unsigned int SDMMC_CMD_START ;
 int USEC_PER_MSEC ;
 int dev_err (int *,char*,unsigned int,unsigned int,unsigned int) ;
 int dw_mci_wait_while_busy (struct dw_mci*,unsigned int) ;
 int mci_writel (struct dw_mci*,int ,unsigned int) ;
 scalar_t__ readl_poll_timeout_atomic (scalar_t__,unsigned int,int,int,int) ;
 int wmb () ;

__attribute__((used)) static void mci_send_cmd(struct dw_mci_slot *slot, u32 cmd, u32 arg)
{
 struct dw_mci *host = slot->host;
 unsigned int cmd_status = 0;

 mci_writel(host, CMDARG, arg);
 wmb();
 dw_mci_wait_while_busy(host, cmd);
 mci_writel(host, CMD, SDMMC_CMD_START | cmd);

 if (readl_poll_timeout_atomic(host->regs + SDMMC_CMD, cmd_status,
          !(cmd_status & SDMMC_CMD_START),
          1, 500 * USEC_PER_MSEC))
  dev_err(&slot->mmc->class_dev,
   "Timeout sending command (cmd %#x arg %#x status %#x)\n",
   cmd, arg, cmd_status);
}
