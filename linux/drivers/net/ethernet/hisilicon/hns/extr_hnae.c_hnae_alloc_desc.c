
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int desc_num; int * desc; scalar_t__ desc_dma_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dma_map_single (int ,int *,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int ring_to_dev (struct hnae_ring*) ;
 int ring_to_dma_dir (struct hnae_ring*) ;

__attribute__((used)) static int hnae_alloc_desc(struct hnae_ring *ring)
{
 int size = ring->desc_num * sizeof(ring->desc[0]);

 ring->desc = kzalloc(size, GFP_KERNEL);
 if (!ring->desc)
  return -ENOMEM;

 ring->desc_dma_addr = dma_map_single(ring_to_dev(ring),
  ring->desc, size, ring_to_dma_dir(ring));
 if (dma_mapping_error(ring_to_dev(ring), ring->desc_dma_addr)) {
  ring->desc_dma_addr = 0;
  kfree(ring->desc);
  ring->desc = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
