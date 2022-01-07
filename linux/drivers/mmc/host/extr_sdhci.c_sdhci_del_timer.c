
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int timer; int data_timer; } ;
struct mmc_request {int cmd; } ;


 int del_timer (int *) ;
 scalar_t__ sdhci_data_line_cmd (int ) ;

__attribute__((used)) static void sdhci_del_timer(struct sdhci_host *host, struct mmc_request *mrq)
{
 if (sdhci_data_line_cmd(mrq->cmd))
  del_timer(&host->data_timer);
 else
  del_timer(&host->timer);
}
