
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hsmmc_host {int req_in_progress; int dma_ch; int flags; struct mmc_request* mrq; int fclk; int clk_rate; scalar_t__ reqs_blocked; } ;
struct mmc_request {TYPE_2__* data; TYPE_1__* cmd; TYPE_1__* sbc; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_3__ {int error; } ;


 int AUTO_CMD23 ;
 int BUG_ON (int) ;
 int WARN_ON (int ) ;
 int clk_get_rate (int ) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int omap_hsmmc_prepare_data (struct omap_hsmmc_host*,struct mmc_request*) ;
 int omap_hsmmc_start_command (struct omap_hsmmc_host*,TYPE_1__*,TYPE_2__*) ;
 int omap_hsmmc_start_dma_transfer (struct omap_hsmmc_host*) ;

__attribute__((used)) static void omap_hsmmc_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);
 int err;

 BUG_ON(host->req_in_progress);
 BUG_ON(host->dma_ch != -1);
 if (host->reqs_blocked)
  host->reqs_blocked = 0;
 WARN_ON(host->mrq != ((void*)0));
 host->mrq = req;
 host->clk_rate = clk_get_rate(host->fclk);
 err = omap_hsmmc_prepare_data(host, req);
 if (err) {
  req->cmd->error = err;
  if (req->data)
   req->data->error = err;
  host->mrq = ((void*)0);
  mmc_request_done(mmc, req);
  return;
 }
 if (req->sbc && !(host->flags & AUTO_CMD23)) {
  omap_hsmmc_start_command(host, req->sbc, ((void*)0));
  return;
 }

 omap_hsmmc_start_dma_transfer(host);
 omap_hsmmc_start_command(host, req->cmd, req->data);
}
