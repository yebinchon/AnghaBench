
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cqspi_st {int rx_dma_complete; int * rx_chan; TYPE_1__* pdev; } ;
typedef int dma_cap_mask_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_MEMCPY ;
 scalar_t__ IS_ERR (int *) ;
 int dev_err (int *,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int * dma_request_chan_by_mask (int *) ;
 int init_completion (int *) ;

__attribute__((used)) static void cqspi_request_mmap_dma(struct cqspi_st *cqspi)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_MEMCPY, mask);

 cqspi->rx_chan = dma_request_chan_by_mask(&mask);
 if (IS_ERR(cqspi->rx_chan)) {
  dev_err(&cqspi->pdev->dev, "No Rx DMA available\n");
  cqspi->rx_chan = ((void*)0);
 }
 init_completion(&cqspi->rx_dma_complete);
}
