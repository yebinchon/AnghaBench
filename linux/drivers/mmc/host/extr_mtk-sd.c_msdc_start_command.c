
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msdc_host {scalar_t__ base; int lock; int dev; int req_timeout; struct mmc_command* cmd; } ;
struct mmc_request {int dummy; } ;
struct mmc_command {int arg; scalar_t__ error; } ;


 int DAT_TIMEOUT ;
 scalar_t__ MSDC_FIFOCS ;
 int MSDC_FIFOCS_RXCNT ;
 int MSDC_FIFOCS_TXCNT ;
 scalar_t__ MSDC_INTEN ;
 scalar_t__ SDC_ARG ;
 scalar_t__ SDC_CMD ;
 int WARN_ON (struct mmc_command*) ;
 int cmd_ints_mask ;
 int dev_err (int ,char*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msdc_cmd_is_ready (struct msdc_host*,struct mmc_request*,struct mmc_command*) ;
 int msdc_cmd_prepare_raw_cmd (struct msdc_host*,struct mmc_request*,struct mmc_command*) ;
 int msdc_reset_hw (struct msdc_host*) ;
 int readl (scalar_t__) ;
 int sdr_set_bits (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_wq ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void msdc_start_command(struct msdc_host *host,
  struct mmc_request *mrq, struct mmc_command *cmd)
{
 u32 rawcmd;
 unsigned long flags;

 WARN_ON(host->cmd);
 host->cmd = cmd;

 mod_delayed_work(system_wq, &host->req_timeout, DAT_TIMEOUT);
 if (!msdc_cmd_is_ready(host, mrq, cmd))
  return;

 if ((readl(host->base + MSDC_FIFOCS) & MSDC_FIFOCS_TXCNT) >> 16 ||
     readl(host->base + MSDC_FIFOCS) & MSDC_FIFOCS_RXCNT) {
  dev_err(host->dev, "TX/RX FIFO non-empty before start of IO. Reset\n");
  msdc_reset_hw(host);
 }

 cmd->error = 0;
 rawcmd = msdc_cmd_prepare_raw_cmd(host, mrq, cmd);

 spin_lock_irqsave(&host->lock, flags);
 sdr_set_bits(host->base + MSDC_INTEN, cmd_ints_mask);
 spin_unlock_irqrestore(&host->lock, flags);

 writel(cmd->arg, host->base + SDC_ARG);
 writel(rawcmd, host->base + SDC_CMD);
}
