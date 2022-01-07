
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dma; scalar_t__ dma_addr; int * dma_buffer; int mmc; } ;


 int DMA_BIDIRECTIONAL ;
 int WBSD_DMA_SIZE ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int free_dma (int) ;
 int kfree (int *) ;
 int mmc_dev (int ) ;

__attribute__((used)) static void wbsd_release_dma(struct wbsd_host *host)
{



 if (host->dma_buffer) {
  dma_unmap_single(mmc_dev(host->mmc), host->dma_addr,
   WBSD_DMA_SIZE, DMA_BIDIRECTIONAL);
  kfree(host->dma_buffer);
 }
 if (host->dma >= 0)
  free_dma(host->dma);

 host->dma = -1;
 host->dma_buffer = ((void*)0);
 host->dma_addr = 0;
}
