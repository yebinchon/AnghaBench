
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int desc_num; int * desc; scalar_t__ desc_dma_addr; } ;


 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 int kfree (int *) ;
 int ring_to_dev (struct hnae_ring*) ;
 int ring_to_dma_dir (struct hnae_ring*) ;

__attribute__((used)) static void hnae_free_desc(struct hnae_ring *ring)
{
 dma_unmap_single(ring_to_dev(ring), ring->desc_dma_addr,
    ring->desc_num * sizeof(ring->desc[0]),
    ring_to_dma_dir(ring));
 ring->desc_dma_addr = 0;
 kfree(ring->desc);
 ring->desc = ((void*)0);
}
