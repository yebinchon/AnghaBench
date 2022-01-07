
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ctx {int dummy; } ;
struct mmc_card {int host; int dev; } ;


 int __mmc_claim_host (int ,struct mmc_ctx*,int *) ;
 int pm_runtime_get_sync (int *) ;

void mmc_get_card(struct mmc_card *card, struct mmc_ctx *ctx)
{
 pm_runtime_get_sync(&card->dev);
 __mmc_claim_host(card->host, ctx, ((void*)0));
}
