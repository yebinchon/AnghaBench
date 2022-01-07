
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int ocr; } ;


 int mmc_go_idle (struct mmc_host*) ;
 int mmc_sdio_init_card (struct mmc_host*,int ,TYPE_1__*) ;
 int mmc_send_if_cond (struct mmc_host*,int ) ;
 int mmc_send_io_op_cond (struct mmc_host*,int ,int *) ;
 int sdio_reset (struct mmc_host*) ;

__attribute__((used)) static int mmc_sdio_reinit_card(struct mmc_host *host)
{
 int ret;
 sdio_reset(host);
 mmc_go_idle(host);
 mmc_send_if_cond(host, host->card->ocr);

 ret = mmc_send_io_op_cond(host, 0, ((void*)0));
 if (ret)
  return ret;

 return mmc_sdio_init_card(host, host->card->ocr, host->card);
}
