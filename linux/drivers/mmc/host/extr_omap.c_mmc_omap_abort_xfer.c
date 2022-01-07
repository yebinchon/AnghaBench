
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {scalar_t__ sg_len; int * data; scalar_t__ dma_in_use; } ;
struct mmc_data {int dummy; } ;


 int mmc_omap_release_dma (struct mmc_omap_host*,struct mmc_data*,int) ;
 int mmc_omap_send_abort (struct mmc_omap_host*,int) ;

__attribute__((used)) static void
mmc_omap_abort_xfer(struct mmc_omap_host *host, struct mmc_data *data)
{
 if (host->dma_in_use)
  mmc_omap_release_dma(host, data, 1);

 host->data = ((void*)0);
 host->sg_len = 0;

 mmc_omap_send_abort(host, 10000);
}
