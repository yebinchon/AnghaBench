
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {TYPE_1__* data; int bounce_addr; scalar_t__ bounce_buffer; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int sg; } ;


 int sg_dma_address (int ) ;

__attribute__((used)) static dma_addr_t sdhci_sdma_address(struct sdhci_host *host)
{
 if (host->bounce_buffer)
  return host->bounce_addr;
 else
  return sg_dma_address(host->data->sg);
}
