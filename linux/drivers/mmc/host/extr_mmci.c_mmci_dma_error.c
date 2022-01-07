
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {TYPE_1__* ops; int use_dma; } ;
struct TYPE_2__ {int (* dma_error ) (struct mmci_host*) ;} ;


 int stub1 (struct mmci_host*) ;

void mmci_dma_error(struct mmci_host *host)
{
 if (!host->use_dma)
  return;

 if (host->ops && host->ops->dma_error)
  host->ops->dma_error(host);
}
