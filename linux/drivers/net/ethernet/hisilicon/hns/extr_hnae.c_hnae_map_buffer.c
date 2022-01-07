
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int dummy; } ;
struct hnae_desc_cb {int dma; int length; int priv; } ;


 int EIO ;
 int dma_map_page (int ,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int ring_to_dev (struct hnae_ring*) ;
 int ring_to_dma_dir (struct hnae_ring*) ;

__attribute__((used)) static int hnae_map_buffer(struct hnae_ring *ring, struct hnae_desc_cb *cb)
{
 cb->dma = dma_map_page(ring_to_dev(ring), cb->priv, 0,
          cb->length, ring_to_dma_dir(ring));

 if (dma_mapping_error(ring_to_dev(ring), cb->dma))
  return -EIO;

 return 0;
}
