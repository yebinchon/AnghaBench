
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {struct mmc_ctx* claimer; } ;
struct mmc_ctx {int dummy; } ;
struct mmc_card {int dev; struct mmc_host* host; } ;


 int WARN_ON (int ) ;
 int mmc_release_host (struct mmc_host*) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

void mmc_put_card(struct mmc_card *card, struct mmc_ctx *ctx)
{
 struct mmc_host *host = card->host;

 WARN_ON(ctx && host->claimer != ctx);

 mmc_release_host(host);
 pm_runtime_mark_last_busy(&card->dev);
 pm_runtime_put_autosuspend(&card->dev);
}
