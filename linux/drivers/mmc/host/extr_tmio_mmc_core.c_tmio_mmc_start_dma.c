
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_1__* dma_ops; } ;
struct mmc_data {int dummy; } ;
struct TYPE_2__ {int (* start ) (struct tmio_mmc_host*,struct mmc_data*) ;} ;


 int stub1 (struct tmio_mmc_host*,struct mmc_data*) ;

__attribute__((used)) static inline void tmio_mmc_start_dma(struct tmio_mmc_host *host,
          struct mmc_data *data)
{
 if (host->dma_ops)
  host->dma_ops->start(host, data);
}
