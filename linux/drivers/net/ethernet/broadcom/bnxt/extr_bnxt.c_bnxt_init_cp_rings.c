
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnxt_ring_struct {void* fw_ring_id; } ;
struct TYPE_5__ {int coal_bufs; int coal_ticks; } ;
struct bnxt_cp_ring_info {TYPE_2__ rx_ring_coal; struct bnxt_ring_struct cp_ring_struct; struct bnxt_cp_ring_info** cp_ring_arr; } ;
struct TYPE_6__ {int coal_bufs; int coal_ticks; } ;
struct bnxt {int cp_nr_rings; TYPE_3__ rx_coal; TYPE_1__** bnapi; } ;
struct TYPE_4__ {struct bnxt_cp_ring_info cp_ring; } ;


 void* INVALID_HW_RING_ID ;

__attribute__((used)) static void bnxt_init_cp_rings(struct bnxt *bp)
{
 int i, j;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_cp_ring_info *cpr = &bp->bnapi[i]->cp_ring;
  struct bnxt_ring_struct *ring = &cpr->cp_ring_struct;

  ring->fw_ring_id = INVALID_HW_RING_ID;
  cpr->rx_ring_coal.coal_ticks = bp->rx_coal.coal_ticks;
  cpr->rx_ring_coal.coal_bufs = bp->rx_coal.coal_bufs;
  for (j = 0; j < 2; j++) {
   struct bnxt_cp_ring_info *cpr2 = cpr->cp_ring_arr[j];

   if (!cpr2)
    continue;

   ring = &cpr2->cp_ring_struct;
   ring->fw_ring_id = INVALID_HW_RING_ID;
   cpr2->rx_ring_coal.coal_ticks = bp->rx_coal.coal_ticks;
   cpr2->rx_ring_coal.coal_bufs = bp->rx_coal.coal_bufs;
  }
 }
}
