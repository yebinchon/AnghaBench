
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sdhci_host {int flags; int quirks; } ;
struct mmc_request {TYPE_2__* data; TYPE_4__* sbc; TYPE_3__* cmd; } ;
struct TYPE_8__ {scalar_t__ error; } ;
struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_6__ {TYPE_1__* stop; } ;
struct TYPE_5__ {scalar_t__ error; } ;


 int SDHCI_DEVICE_DEAD ;
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ;

__attribute__((used)) static bool sdhci_needs_reset(struct sdhci_host *host, struct mmc_request *mrq)
{
 return (!(host->flags & SDHCI_DEVICE_DEAD) &&
  ((mrq->cmd && mrq->cmd->error) ||
   (mrq->sbc && mrq->sbc->error) ||
   (mrq->data && mrq->data->stop && mrq->data->stop->error) ||
   (host->quirks & SDHCI_QUIRK_RESET_AFTER_REQUEST)));
}
