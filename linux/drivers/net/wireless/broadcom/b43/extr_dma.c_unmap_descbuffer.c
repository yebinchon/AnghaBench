
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_dmaring {TYPE_2__* dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dma_dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,size_t,int ) ;

__attribute__((used)) static inline
    void unmap_descbuffer(struct b43_dmaring *ring,
     dma_addr_t addr, size_t len, int tx)
{
 if (tx) {
  dma_unmap_single(ring->dev->dev->dma_dev,
     addr, len, DMA_TO_DEVICE);
 } else {
  dma_unmap_single(ring->dev->dev->dma_dev,
     addr, len, DMA_FROM_DEVICE);
 }
}
