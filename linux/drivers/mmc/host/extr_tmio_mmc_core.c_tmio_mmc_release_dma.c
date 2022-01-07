
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_1__* dma_ops; } ;
struct TYPE_2__ {int (* release ) (struct tmio_mmc_host*) ;} ;


 int stub1 (struct tmio_mmc_host*) ;

__attribute__((used)) static inline void tmio_mmc_release_dma(struct tmio_mmc_host *host)
{
 if (host->dma_ops)
  host->dma_ops->release(host);
}
