
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns3_enet_ring {unsigned int desc_num; int next_to_use; TYPE_1__* desc_cb; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int dma; int length; } ;


 scalar_t__ DESC_TYPE_SKB ;
 int DMA_TO_DEVICE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int next_to_use ;
 int ring_ptr_move_bw (struct hns3_enet_ring*,int ) ;
 struct device* ring_to_dev (struct hns3_enet_ring*) ;

__attribute__((used)) static void hns3_clear_desc(struct hns3_enet_ring *ring, int next_to_use_orig)
{
 struct device *dev = ring_to_dev(ring);
 unsigned int i;

 for (i = 0; i < ring->desc_num; i++) {

  if (ring->next_to_use == next_to_use_orig)
   break;


  ring_ptr_move_bw(ring, next_to_use);


  if (ring->desc_cb[ring->next_to_use].type == DESC_TYPE_SKB)
   dma_unmap_single(dev,
      ring->desc_cb[ring->next_to_use].dma,
     ring->desc_cb[ring->next_to_use].length,
     DMA_TO_DEVICE);
  else if (ring->desc_cb[ring->next_to_use].length)
   dma_unmap_page(dev,
           ring->desc_cb[ring->next_to_use].dma,
           ring->desc_cb[ring->next_to_use].length,
           DMA_TO_DEVICE);

  ring->desc_cb[ring->next_to_use].length = 0;
  ring->desc_cb[ring->next_to_use].dma = 0;
 }
}
