
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int dummy; } ;
struct goldfish_mmc_host {scalar_t__ dma_done; int dma_in_use; } ;


 int goldfish_mmc_xfer_done (struct goldfish_mmc_host*,struct mmc_data*) ;

__attribute__((used)) static void goldfish_mmc_end_of_data(struct goldfish_mmc_host *host,
         struct mmc_data *data)
{
 if (!host->dma_in_use) {
  goldfish_mmc_xfer_done(host, data);
  return;
 }
 if (host->dma_done)
  goldfish_mmc_xfer_done(host, data);
}
