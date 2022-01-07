
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_tx_ring {int phys; void* dma; } ;



__attribute__((used)) static inline void *mtk_qdma_phys_to_virt(struct mtk_tx_ring *ring, u32 desc)
{
 void *ret = ring->dma;

 return ret + (desc - ring->phys);
}
