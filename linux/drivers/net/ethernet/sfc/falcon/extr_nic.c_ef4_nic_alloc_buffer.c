
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* pci_dev; } ;
struct ef4_buffer {unsigned int len; int addr; int dma_addr; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int dma_alloc_coherent (int *,unsigned int,int *,int ) ;

int ef4_nic_alloc_buffer(struct ef4_nic *efx, struct ef4_buffer *buffer,
    unsigned int len, gfp_t gfp_flags)
{
 buffer->addr = dma_alloc_coherent(&efx->pci_dev->dev, len,
       &buffer->dma_addr, gfp_flags);
 if (!buffer->addr)
  return -ENOMEM;
 buffer->len = len;
 return 0;
}
