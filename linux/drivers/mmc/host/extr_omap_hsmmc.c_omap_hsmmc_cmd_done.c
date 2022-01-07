
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hsmmc_host {int flags; TYPE_2__* mrq; int response_busy; int * data; int base; TYPE_1__* cmd; } ;
struct mmc_command {int flags; scalar_t__ error; void** resp; } ;
struct TYPE_4__ {int data; int cmd; TYPE_1__* sbc; } ;
struct TYPE_3__ {int error; } ;


 int AUTO_CMD23 ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 void* OMAP_HSMMC_READ (int ,int ) ;
 int RSP10 ;
 int RSP32 ;
 int RSP54 ;
 int RSP76 ;
 int omap_hsmmc_request_done (struct omap_hsmmc_host*,TYPE_2__*) ;
 int omap_hsmmc_start_command (struct omap_hsmmc_host*,int ,int ) ;
 int omap_hsmmc_start_dma_transfer (struct omap_hsmmc_host*) ;

__attribute__((used)) static void
omap_hsmmc_cmd_done(struct omap_hsmmc_host *host, struct mmc_command *cmd)
{
 if (host->mrq->sbc && (host->cmd == host->mrq->sbc) &&
     !host->mrq->sbc->error && !(host->flags & AUTO_CMD23)) {
  host->cmd = ((void*)0);
  omap_hsmmc_start_dma_transfer(host);
  omap_hsmmc_start_command(host, host->mrq->cmd,
      host->mrq->data);
  return;
 }

 host->cmd = ((void*)0);

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {

   cmd->resp[3] = OMAP_HSMMC_READ(host->base, RSP10);
   cmd->resp[2] = OMAP_HSMMC_READ(host->base, RSP32);
   cmd->resp[1] = OMAP_HSMMC_READ(host->base, RSP54);
   cmd->resp[0] = OMAP_HSMMC_READ(host->base, RSP76);
  } else {

   cmd->resp[0] = OMAP_HSMMC_READ(host->base, RSP10);
  }
 }
 if ((host->data == ((void*)0) && !host->response_busy) || cmd->error)
  omap_hsmmc_request_done(host, host->mrq);
}
