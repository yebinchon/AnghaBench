
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sdhci_host {int lock; TYPE_1__* cmd; int mmc; } ;
struct TYPE_2__ {int mrq; int error; } ;


 int ETIMEDOUT ;
 struct sdhci_host* from_timer (struct sdhci_host*,struct timer_list*,int ) ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int sdhci_data_line_cmd (TYPE_1__*) ;
 int sdhci_dumpregs (struct sdhci_host*) ;
 int sdhci_finish_mrq (struct sdhci_host*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void sdhci_timeout_timer(struct timer_list *t)
{
 struct sdhci_host *host;
 unsigned long flags;

 host = from_timer(host, t, timer);

 spin_lock_irqsave(&host->lock, flags);

 if (host->cmd && !sdhci_data_line_cmd(host->cmd)) {
  pr_err("%s: Timeout waiting for hardware cmd interrupt.\n",
         mmc_hostname(host->mmc));
  sdhci_dumpregs(host);

  host->cmd->error = -ETIMEDOUT;
  sdhci_finish_mrq(host, host->cmd->mrq);
 }

 spin_unlock_irqrestore(&host->lock, flags);
}
