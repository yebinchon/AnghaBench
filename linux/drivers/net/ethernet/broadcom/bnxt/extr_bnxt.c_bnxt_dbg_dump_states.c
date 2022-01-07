
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_napi {int dummy; } ;
struct bnxt {int cp_nr_rings; struct bnxt_napi** bnapi; } ;


 int bnxt_dump_cp_sw_state (struct bnxt_napi*) ;
 int bnxt_dump_rx_sw_state (struct bnxt_napi*) ;
 int bnxt_dump_tx_sw_state (struct bnxt_napi*) ;
 scalar_t__ netif_msg_drv (struct bnxt*) ;

__attribute__((used)) static void bnxt_dbg_dump_states(struct bnxt *bp)
{
 int i;
 struct bnxt_napi *bnapi;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  bnapi = bp->bnapi[i];
  if (netif_msg_drv(bp)) {
   bnxt_dump_tx_sw_state(bnapi);
   bnxt_dump_rx_sw_state(bnapi);
   bnxt_dump_cp_sw_state(bnapi);
  }
 }
}
