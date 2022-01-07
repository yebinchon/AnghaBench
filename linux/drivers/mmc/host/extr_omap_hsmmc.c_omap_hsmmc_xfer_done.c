
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {struct mmc_request* mrq; int * data; scalar_t__ response_busy; TYPE_1__* cmd; } ;
struct mmc_request {int sbc; } ;
struct mmc_data {int blocks; int blksz; struct mmc_request* mrq; scalar_t__ stop; scalar_t__ error; scalar_t__ bytes_xfered; } ;
struct TYPE_2__ {int opcode; } ;


 int omap_hsmmc_request_done (struct omap_hsmmc_host*,struct mmc_request*) ;
 int omap_hsmmc_start_command (struct omap_hsmmc_host*,scalar_t__,int *) ;

__attribute__((used)) static void
omap_hsmmc_xfer_done(struct omap_hsmmc_host *host, struct mmc_data *data)
{
 if (!data) {
  struct mmc_request *mrq = host->mrq;


  if (host->cmd && host->cmd->opcode == 6 &&
      host->response_busy) {
   host->response_busy = 0;
   return;
  }

  omap_hsmmc_request_done(host, mrq);
  return;
 }

 host->data = ((void*)0);

 if (!data->error)
  data->bytes_xfered += data->blocks * (data->blksz);
 else
  data->bytes_xfered = 0;

 if (data->stop && (data->error || !host->mrq->sbc))
  omap_hsmmc_start_command(host, data->stop, ((void*)0));
 else
  omap_hsmmc_request_done(host, data->mrq);
}
