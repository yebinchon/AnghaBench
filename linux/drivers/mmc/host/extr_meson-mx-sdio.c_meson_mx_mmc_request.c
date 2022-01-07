
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {struct mmc_command* cmd; struct mmc_command* sbc; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {scalar_t__ error; } ;
struct meson_mx_mmc_host {scalar_t__ base; struct mmc_request* mrq; scalar_t__ error; } ;
struct TYPE_2__ {int sg; } ;


 scalar_t__ MESON_MX_SDIO_ADDR ;
 scalar_t__ meson_mx_mmc_map_dma (struct mmc_host*,struct mmc_request*) ;
 int meson_mx_mmc_start_cmd (struct mmc_host*,struct mmc_command*) ;
 struct meson_mx_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int sg_dma_address (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mx_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct meson_mx_mmc_host *host = mmc_priv(mmc);
 struct mmc_command *cmd = mrq->cmd;

 if (!host->error)
  host->error = meson_mx_mmc_map_dma(mmc, mrq);

 if (host->error) {
  cmd->error = host->error;
  mmc_request_done(mmc, mrq);
  return;
 }

 host->mrq = mrq;

 if (mrq->data)
  writel(sg_dma_address(mrq->data->sg),
         host->base + MESON_MX_SDIO_ADDR);

 if (mrq->sbc)
  meson_mx_mmc_start_cmd(mmc, mrq->sbc);
 else
  meson_mx_mmc_start_cmd(mmc, mrq->cmd);
}
