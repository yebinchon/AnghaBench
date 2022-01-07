
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bgmac_dma_ring {int dma_base; int cpu_base; } ;
struct bgmac_dma_desc {int dummy; } ;
struct bgmac {struct device* dma_dev; } ;


 int dma_free_coherent (struct device*,int,int ,int ) ;

__attribute__((used)) static void bgmac_dma_ring_desc_free(struct bgmac *bgmac,
         struct bgmac_dma_ring *ring,
         int num_slots)
{
 struct device *dma_dev = bgmac->dma_dev;
 int size;

 if (!ring->cpu_base)
     return;


 size = num_slots * sizeof(struct bgmac_dma_desc);
 dma_free_coherent(dma_dev, size, ring->cpu_base,
     ring->dma_base);
}
