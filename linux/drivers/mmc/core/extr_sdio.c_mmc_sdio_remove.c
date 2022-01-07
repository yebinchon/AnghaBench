
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int sdio_funcs; int ** sdio_func; } ;


 int mmc_remove_card (TYPE_1__*) ;
 int sdio_remove_func (int *) ;

__attribute__((used)) static void mmc_sdio_remove(struct mmc_host *host)
{
 int i;

 for (i = 0;i < host->card->sdio_funcs;i++) {
  if (host->card->sdio_func[i]) {
   sdio_remove_func(host->card->sdio_func[i]);
   host->card->sdio_func[i] = ((void*)0);
  }
 }

 mmc_remove_card(host->card);
 host->card = ((void*)0);
}
