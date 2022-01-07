
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_rx_ring_info {TYPE_1__* rx_tpa; TYPE_1__* rx_tpa_idx_map; } ;
struct bnxt {int rx_nr_rings; struct bnxt_rx_ring_info* rx_ring; } ;
struct TYPE_2__ {struct TYPE_2__* agg_arr; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void bnxt_free_tpa_info(struct bnxt *bp)
{
 int i;

 for (i = 0; i < bp->rx_nr_rings; i++) {
  struct bnxt_rx_ring_info *rxr = &bp->rx_ring[i];

  kfree(rxr->rx_tpa_idx_map);
  rxr->rx_tpa_idx_map = ((void*)0);
  if (rxr->rx_tpa) {
   kfree(rxr->rx_tpa[0].agg_arr);
   rxr->rx_tpa[0].agg_arr = ((void*)0);
  }
  kfree(rxr->rx_tpa);
  rxr->rx_tpa = ((void*)0);
 }
}
