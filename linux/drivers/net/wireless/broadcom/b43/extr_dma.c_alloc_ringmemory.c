
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct b43_dmaring {scalar_t__ type; int descbase; int dmabase; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dma_dev; } ;


 int B43_DMA32_RINGMEMSIZE ;
 int B43_DMA64_RINGMEMSIZE ;
 scalar_t__ B43_DMA_64BIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static int alloc_ringmemory(struct b43_dmaring *ring)
{
 u16 ring_mem_size = (ring->type == B43_DMA_64BIT) ?
    B43_DMA64_RINGMEMSIZE : B43_DMA32_RINGMEMSIZE;

 ring->descbase = dma_alloc_coherent(ring->dev->dev->dma_dev,
         ring_mem_size, &(ring->dmabase),
         GFP_KERNEL);
 if (!ring->descbase)
  return -ENOMEM;

 return 0;
}
