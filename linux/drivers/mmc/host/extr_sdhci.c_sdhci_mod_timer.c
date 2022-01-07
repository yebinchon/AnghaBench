
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int timer; int data_timer; } ;
struct mmc_request {int cmd; } ;


 int mod_timer (int *,unsigned long) ;
 scalar_t__ sdhci_data_line_cmd (int ) ;

__attribute__((used)) static void sdhci_mod_timer(struct sdhci_host *host, struct mmc_request *mrq,
       unsigned long timeout)
{
 if (sdhci_data_line_cmd(mrq->cmd))
  mod_timer(&host->data_timer, timeout);
 else
  mod_timer(&host->timer, timeout);
}
