
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int * chan_rx; int * chan_tx; TYPE_1__* dma_ops; } ;
struct tmio_mmc_data {int dummy; } ;
struct TYPE_2__ {int (* request ) (struct tmio_mmc_host*,struct tmio_mmc_data*) ;} ;


 int stub1 (struct tmio_mmc_host*,struct tmio_mmc_data*) ;

__attribute__((used)) static inline void tmio_mmc_request_dma(struct tmio_mmc_host *host,
     struct tmio_mmc_data *pdata)
{
 if (host->dma_ops) {
  host->dma_ops->request(host, pdata);
 } else {
  host->chan_tx = ((void*)0);
  host->chan_rx = ((void*)0);
 }
}
