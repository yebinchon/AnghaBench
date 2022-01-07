
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_enet_ring {size_t next_to_clean; size_t next_to_use; TYPE_2__* desc; } ;
struct TYPE_3__ {scalar_t__ bdtp_fe_sc_vld_ra_ri; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;


 int hns3_free_buffer_detach (struct hns3_enet_ring*,size_t) ;
 int next_to_clean ;
 int ring_ptr_move_fw (struct hns3_enet_ring*,int ) ;

__attribute__((used)) static void hns3_clear_tx_ring(struct hns3_enet_ring *ring)
{
 while (ring->next_to_clean != ring->next_to_use) {
  ring->desc[ring->next_to_clean].tx.bdtp_fe_sc_vld_ra_ri = 0;
  hns3_free_buffer_detach(ring, ring->next_to_clean);
  ring_ptr_move_fw(ring, next_to_clean);
 }
}
