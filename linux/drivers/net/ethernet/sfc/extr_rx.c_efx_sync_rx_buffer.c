
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_rx_buffer {int dma_addr; } ;
struct efx_nic {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (int *,int ,unsigned int,int ) ;

__attribute__((used)) static inline void efx_sync_rx_buffer(struct efx_nic *efx,
          struct efx_rx_buffer *rx_buf,
          unsigned int len)
{
 dma_sync_single_for_cpu(&efx->pci_dev->dev, rx_buf->dma_addr, len,
    DMA_FROM_DEVICE);
}
