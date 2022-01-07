
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {scalar_t__ type; scalar_t__ length; int dma; } ;


 scalar_t__ DESC_TYPE_SKB ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int ring_to_dev (struct hns3_enet_ring*) ;
 int ring_to_dma_dir (struct hns3_enet_ring*) ;

__attribute__((used)) static void hns3_unmap_buffer(struct hns3_enet_ring *ring,
         struct hns3_desc_cb *cb)
{
 if (cb->type == DESC_TYPE_SKB)
  dma_unmap_single(ring_to_dev(ring), cb->dma, cb->length,
     ring_to_dma_dir(ring));
 else if (cb->length)
  dma_unmap_page(ring_to_dev(ring), cb->dma, cb->length,
          ring_to_dma_dir(ring));
}
