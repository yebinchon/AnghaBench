
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_request {int dummy; } ;
struct mmc_data {int blksz; int blocks; } ;
struct mmc_command {scalar_t__ opcode; struct mmc_data* data; } ;
struct dw_mci_slot {int flags; int mmc; struct mmc_request* mrq; } ;
struct dw_mci {int stop_cmdr; int irq_lock; int cmd11_timer; scalar_t__ pending_events; scalar_t__ dir_status; scalar_t__ data_status; scalar_t__ cmd_status; scalar_t__ completed_events; struct mmc_request* mrq; } ;


 int BLKSIZ ;
 int BYTCNT ;
 int DW_MMC_CARD_NEED_INIT ;
 int EVENT_CMD_COMPLETE ;
 int SDMMC_CMD_INIT ;
 scalar_t__ SD_SWITCH_VOLTAGE ;
 int TMOUT ;
 int dw_mci_prep_stop_abort (struct dw_mci*,struct mmc_command*) ;
 int dw_mci_prepare_command (int ,struct mmc_command*) ;
 int dw_mci_start_command (struct dw_mci*,struct mmc_command*,int ) ;
 int dw_mci_submit_data (struct dw_mci*,struct mmc_data*) ;
 scalar_t__ jiffies ;
 int mci_writel (struct dw_mci*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,scalar_t__*) ;
 int wmb () ;

__attribute__((used)) static void __dw_mci_start_request(struct dw_mci *host,
       struct dw_mci_slot *slot,
       struct mmc_command *cmd)
{
 struct mmc_request *mrq;
 struct mmc_data *data;
 u32 cmdflags;

 mrq = slot->mrq;

 host->mrq = mrq;

 host->pending_events = 0;
 host->completed_events = 0;
 host->cmd_status = 0;
 host->data_status = 0;
 host->dir_status = 0;

 data = cmd->data;
 if (data) {
  mci_writel(host, TMOUT, 0xFFFFFFFF);
  mci_writel(host, BYTCNT, data->blksz*data->blocks);
  mci_writel(host, BLKSIZ, data->blksz);
 }

 cmdflags = dw_mci_prepare_command(slot->mmc, cmd);


 if (test_and_clear_bit(DW_MMC_CARD_NEED_INIT, &slot->flags))
  cmdflags |= SDMMC_CMD_INIT;

 if (data) {
  dw_mci_submit_data(host, data);
  wmb();
 }

 dw_mci_start_command(host, cmd, cmdflags);

 if (cmd->opcode == SD_SWITCH_VOLTAGE) {
  unsigned long irqflags;
  spin_lock_irqsave(&host->irq_lock, irqflags);
  if (!test_bit(EVENT_CMD_COMPLETE, &host->pending_events))
   mod_timer(&host->cmd11_timer,
    jiffies + msecs_to_jiffies(500) + 1);
  spin_unlock_irqrestore(&host->irq_lock, irqflags);
 }

 host->stop_cmdr = dw_mci_prep_stop_abort(host, cmd);
}
