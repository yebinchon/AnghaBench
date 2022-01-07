
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {int dummy; } ;
struct TYPE_2__ {int (* init_card ) (struct mmc_card*) ;} ;


 TYPE_1__* mmc_pdata (struct omap_hsmmc_host*) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int stub1 (struct mmc_card*) ;

__attribute__((used)) static void omap_hsmmc_init_card(struct mmc_host *mmc, struct mmc_card *card)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);

 if (mmc_pdata(host)->init_card)
  mmc_pdata(host)->init_card(card);
}
