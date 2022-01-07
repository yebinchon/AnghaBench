
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {int dma; int length; int priv; } ;


 int EIO ;
 int dma_map_page (int ,int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int ring_to_dev (struct hns3_enet_ring*) ;
 int ring_to_dma_dir (struct hns3_enet_ring*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int hns3_map_buffer(struct hns3_enet_ring *ring, struct hns3_desc_cb *cb)
{
 cb->dma = dma_map_page(ring_to_dev(ring), cb->priv, 0,
          cb->length, ring_to_dma_dir(ring));

 if (unlikely(dma_mapping_error(ring_to_dev(ring), cb->dma)))
  return -EIO;

 return 0;
}
