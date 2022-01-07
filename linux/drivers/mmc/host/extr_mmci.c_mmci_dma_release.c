
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {int use_dma; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dma_release ) (struct mmci_host*) ;} ;


 int stub1 (struct mmci_host*) ;

void mmci_dma_release(struct mmci_host *host)
{
 if (host->ops && host->ops->dma_release)
  host->ops->dma_release(host);

 host->use_dma = 0;
}
