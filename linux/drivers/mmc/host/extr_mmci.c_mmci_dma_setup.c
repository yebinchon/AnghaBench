
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {int next_cookie; int use_dma; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* dma_setup ) (struct mmci_host*) ;} ;


 scalar_t__ stub1 (struct mmci_host*) ;

void mmci_dma_setup(struct mmci_host *host)
{
 if (!host->ops || !host->ops->dma_setup)
  return;

 if (host->ops->dma_setup(host))
  return;


 host->next_cookie = 1;

 host->use_dma = 1;
}
