
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_rx_ring_info {int rx_prod; int rx_db; int rx_agg_prod; int rx_agg_db; } ;
struct bnxt_napi {int events; struct bnxt_rx_ring_info* rx_ring; scalar_t__ tx_pkts; int (* tx_int ) (struct bnxt*,struct bnxt_napi*,scalar_t__) ;} ;
struct bnxt {int dummy; } ;


 int BNXT_AGG_EVENT ;
 int BNXT_RX_EVENT ;
 int bnxt_db_write (struct bnxt*,int *,int ) ;
 int stub1 (struct bnxt*,struct bnxt_napi*,scalar_t__) ;

__attribute__((used)) static void __bnxt_poll_work_done(struct bnxt *bp, struct bnxt_napi *bnapi)
{
 if (bnapi->tx_pkts) {
  bnapi->tx_int(bp, bnapi, bnapi->tx_pkts);
  bnapi->tx_pkts = 0;
 }

 if (bnapi->events & BNXT_RX_EVENT) {
  struct bnxt_rx_ring_info *rxr = bnapi->rx_ring;

  if (bnapi->events & BNXT_AGG_EVENT)
   bnxt_db_write(bp, &rxr->rx_agg_db, rxr->rx_agg_prod);
  bnxt_db_write(bp, &rxr->rx_db, rxr->rx_prod);
 }
 bnapi->events = 0;
}
