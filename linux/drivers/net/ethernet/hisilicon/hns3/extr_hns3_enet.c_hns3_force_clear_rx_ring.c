
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns3_enet_ring {size_t next_to_use; size_t next_to_clean; TYPE_1__* desc_cb; } ;
struct TYPE_2__ {scalar_t__ dma; int reuse_flag; } ;


 int hns3_unmap_buffer (struct hns3_enet_ring*,TYPE_1__*) ;
 int next_to_use ;
 int ring_ptr_move_fw (struct hns3_enet_ring*,int ) ;

__attribute__((used)) static void hns3_force_clear_rx_ring(struct hns3_enet_ring *ring)
{
 while (ring->next_to_use != ring->next_to_clean) {




  if (!ring->desc_cb[ring->next_to_use].reuse_flag) {
   hns3_unmap_buffer(ring,
       &ring->desc_cb[ring->next_to_use]);
   ring->desc_cb[ring->next_to_use].dma = 0;
  }

  ring_ptr_move_fw(ring, next_to_use);
 }
}
