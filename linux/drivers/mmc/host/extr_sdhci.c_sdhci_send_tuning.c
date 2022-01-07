
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sdhci_host {scalar_t__ sdma_boundary; int tuning_done; int buf_ready_int; int lock; int * cmd; struct mmc_host* mmc; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct TYPE_2__ {scalar_t__ bus_width; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct mmc_command {scalar_t__ opcode; int flags; struct mmc_request* mrq; } ;


 scalar_t__ MMC_BUS_WIDTH_8 ;
 int MMC_CMD_ADTC ;
 int MMC_RSP_R1 ;
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ;
 int SDHCI_BLOCK_SIZE ;
 int SDHCI_MAKE_BLKSZ (scalar_t__,int) ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_TRNS_READ ;
 int msecs_to_jiffies (int) ;
 int sdhci_del_timer (struct sdhci_host*,struct mmc_request*) ;
 int sdhci_send_command (struct sdhci_host*,struct mmc_command*) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;

void sdhci_send_tuning(struct sdhci_host *host, u32 opcode)
{
 struct mmc_host *mmc = host->mmc;
 struct mmc_command cmd = {};
 struct mmc_request mrq = {};
 unsigned long flags;
 u32 b = host->sdma_boundary;

 spin_lock_irqsave(&host->lock, flags);

 cmd.opcode = opcode;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_ADTC;
 cmd.mrq = &mrq;

 mrq.cmd = &cmd;





 if (cmd.opcode == MMC_SEND_TUNING_BLOCK_HS200 &&
     mmc->ios.bus_width == MMC_BUS_WIDTH_8)
  sdhci_writew(host, SDHCI_MAKE_BLKSZ(b, 128), SDHCI_BLOCK_SIZE);
 else
  sdhci_writew(host, SDHCI_MAKE_BLKSZ(b, 64), SDHCI_BLOCK_SIZE);







 sdhci_writew(host, SDHCI_TRNS_READ, SDHCI_TRANSFER_MODE);

 sdhci_send_command(host, &cmd);

 host->cmd = ((void*)0);

 sdhci_del_timer(host, &mrq);

 host->tuning_done = 0;

 spin_unlock_irqrestore(&host->lock, flags);


 wait_event_timeout(host->buf_ready_int, (host->tuning_done == 1),
      msecs_to_jiffies(50));

}
