
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_host {TYPE_2__* cmd; TYPE_1__* data_cmd; } ;
struct TYPE_4__ {int error; int mrq; } ;
struct TYPE_3__ {int error; int mrq; } ;


 int sdhci_finish_mrq (struct sdhci_host*,int ) ;

__attribute__((used)) static void sdhci_error_out_mrqs(struct sdhci_host *host, int err)
{
 if (host->data_cmd) {
  host->data_cmd->error = err;
  sdhci_finish_mrq(host, host->data_cmd->mrq);
 }

 if (host->cmd) {
  host->cmd->error = err;
  sdhci_finish_mrq(host, host->cmd->mrq);
 }
}
