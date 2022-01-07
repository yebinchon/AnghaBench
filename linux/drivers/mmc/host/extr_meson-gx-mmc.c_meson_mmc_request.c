
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int cmd; scalar_t__ sbc; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct meson_host {scalar_t__ regs; } ;
struct TYPE_2__ {int host_cookie; } ;


 int SD_EMMC_PRE_REQ_DONE ;
 scalar_t__ SD_EMMC_START ;
 int meson_mmc_desc_chain_mode (TYPE_1__*) ;
 int meson_mmc_get_transfer_mode (struct mmc_host*,struct mmc_request*) ;
 int meson_mmc_post_req (struct mmc_host*,struct mmc_request*,int ) ;
 int meson_mmc_pre_req (struct mmc_host*,struct mmc_request*) ;
 int meson_mmc_start_cmd (struct mmc_host*,int ) ;
 struct meson_host* mmc_priv (struct mmc_host*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct meson_host *host = mmc_priv(mmc);
 bool needs_pre_post_req = mrq->data &&
   !(mrq->data->host_cookie & SD_EMMC_PRE_REQ_DONE);

 if (needs_pre_post_req) {
  meson_mmc_get_transfer_mode(mmc, mrq);
  if (!meson_mmc_desc_chain_mode(mrq->data))
   needs_pre_post_req = 0;
 }

 if (needs_pre_post_req)
  meson_mmc_pre_req(mmc, mrq);


 writel(0, host->regs + SD_EMMC_START);

 meson_mmc_start_cmd(mmc, mrq->sbc ?: mrq->cmd);

 if (needs_pre_post_req)
  meson_mmc_post_req(mmc, mrq, 0);
}
