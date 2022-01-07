
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* pci_dev; } ;
struct ef4_buffer {int * addr; int dma_addr; int len; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

void ef4_nic_free_buffer(struct ef4_nic *efx, struct ef4_buffer *buffer)
{
 if (buffer->addr) {
  dma_free_coherent(&efx->pci_dev->dev, buffer->len,
      buffer->addr, buffer->dma_addr);
  buffer->addr = ((void*)0);
 }
}
