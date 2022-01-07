
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int ocr_avail; } ;
struct mmc_card {int dummy; } ;


 int mmc_go_idle (struct mmc_host*) ;
 int mmc_remove_card (struct mmc_card*) ;
 int mmc_send_if_cond (struct mmc_host*,int ) ;
 int sdio_reset (struct mmc_host*) ;

__attribute__((used)) static void mmc_sdio_resend_if_cond(struct mmc_host *host,
        struct mmc_card *card)
{
 sdio_reset(host);
 mmc_go_idle(host);
 mmc_send_if_cond(host, host->ocr_avail);
 mmc_remove_card(card);
}
