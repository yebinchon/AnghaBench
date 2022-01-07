
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_host {int pending_reset; struct mmc_request** mrqs_done; TYPE_3__* data; TYPE_2__* data_cmd; TYPE_1__* cmd; } ;
struct mmc_request {int dummy; } ;
struct TYPE_6__ {struct mmc_request* mrq; } ;
struct TYPE_5__ {struct mmc_request* mrq; } ;
struct TYPE_4__ {struct mmc_request* mrq; } ;


 int SDHCI_MAX_MRQS ;
 int WARN_ON (int) ;
 int sdhci_del_timer (struct sdhci_host*,struct mmc_request*) ;
 int sdhci_has_requests (struct sdhci_host*) ;
 int sdhci_led_deactivate (struct sdhci_host*) ;
 scalar_t__ sdhci_needs_reset (struct sdhci_host*,struct mmc_request*) ;

__attribute__((used)) static void __sdhci_finish_mrq(struct sdhci_host *host, struct mmc_request *mrq)
{
 int i;

 if (host->cmd && host->cmd->mrq == mrq)
  host->cmd = ((void*)0);

 if (host->data_cmd && host->data_cmd->mrq == mrq)
  host->data_cmd = ((void*)0);

 if (host->data && host->data->mrq == mrq)
  host->data = ((void*)0);

 if (sdhci_needs_reset(host, mrq))
  host->pending_reset = 1;

 for (i = 0; i < SDHCI_MAX_MRQS; i++) {
  if (host->mrqs_done[i] == mrq) {
   WARN_ON(1);
   return;
  }
 }

 for (i = 0; i < SDHCI_MAX_MRQS; i++) {
  if (!host->mrqs_done[i]) {
   host->mrqs_done[i] = mrq;
   break;
  }
 }

 WARN_ON(i >= SDHCI_MAX_MRQS);

 sdhci_del_timer(host, mrq);

 if (!sdhci_has_requests(host))
  sdhci_led_deactivate(host);
}
