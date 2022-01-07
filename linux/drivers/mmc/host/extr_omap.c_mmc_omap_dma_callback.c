
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; } ;


 int mmc_omap_dma_done (struct mmc_omap_host*,struct mmc_data*) ;

__attribute__((used)) static void mmc_omap_dma_callback(void *priv)
{
 struct mmc_omap_host *host = priv;
 struct mmc_data *data = host->data;


 data->bytes_xfered += data->blocks * data->blksz;

 mmc_omap_dma_done(host, data);
}
