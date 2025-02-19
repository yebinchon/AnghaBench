
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tx_cmp {int dummy; } ;
struct bnxt_tx_ring_info {int tx_db; int tx_prod; } ;
struct bnxt_napi {int tx_pkts; int events; struct bnxt_tx_ring_info* tx_ring; } ;
struct bnxt_cp_ring_info {int has_more_work; int had_work_done; int cp_raw_cons; struct tx_cmp** cp_desc_ring; struct bnxt_napi* bnapi; } ;
struct bnxt {int tx_wake_thresh; } ;


 int BNXT_REDIRECT_EVENT ;
 int BNXT_TX_EVENT ;
 int CMPL_BASE_TYPE_HWRM_ASYNC_EVENT ;
 int CMPL_BASE_TYPE_HWRM_DONE ;
 int CMPL_BASE_TYPE_HWRM_FWD_REQ ;
 int CMP_TYPE_TX_L2_CMP ;
 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int EBUSY ;
 int ENOMEM ;
 int NEXT_RAW_CMP (int ) ;
 int RING_CMP (int ) ;
 int TX_CMP_TYPE (struct tx_cmp*) ;
 int TX_CMP_VALID (struct tx_cmp*,int ) ;
 int bnxt_db_write_relaxed (struct bnxt*,int *,int ) ;
 int bnxt_force_rx_discard (struct bnxt*,struct bnxt_cp_ring_info*,int *,int*) ;
 int bnxt_hwrm_handler (struct bnxt*,struct tx_cmp*) ;
 int bnxt_rx_pkt (struct bnxt*,struct bnxt_cp_ring_info*,int *,int*) ;
 int dma_rmb () ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int xdp_do_flush_map () ;

__attribute__((used)) static int __bnxt_poll_work(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
       int budget)
{
 struct bnxt_napi *bnapi = cpr->bnapi;
 u32 raw_cons = cpr->cp_raw_cons;
 u32 cons;
 int tx_pkts = 0;
 int rx_pkts = 0;
 u8 event = 0;
 struct tx_cmp *txcmp;

 cpr->has_more_work = 0;
 while (1) {
  int rc;

  cons = RING_CMP(raw_cons);
  txcmp = &cpr->cp_desc_ring[CP_RING(cons)][CP_IDX(cons)];

  if (!TX_CMP_VALID(txcmp, raw_cons))
   break;




  dma_rmb();
  cpr->had_work_done = 1;
  if (TX_CMP_TYPE(txcmp) == CMP_TYPE_TX_L2_CMP) {
   tx_pkts++;

   if (unlikely(tx_pkts > bp->tx_wake_thresh)) {
    rx_pkts = budget;
    raw_cons = NEXT_RAW_CMP(raw_cons);
    if (budget)
     cpr->has_more_work = 1;
    break;
   }
  } else if ((TX_CMP_TYPE(txcmp) & 0x30) == 0x10) {
   if (likely(budget))
    rc = bnxt_rx_pkt(bp, cpr, &raw_cons, &event);
   else
    rc = bnxt_force_rx_discard(bp, cpr, &raw_cons,
          &event);
   if (likely(rc >= 0))
    rx_pkts += rc;





   else if (rc == -ENOMEM && budget)
    rx_pkts++;
   else if (rc == -EBUSY)
    break;
  } else if (unlikely((TX_CMP_TYPE(txcmp) ==
         CMPL_BASE_TYPE_HWRM_DONE) ||
        (TX_CMP_TYPE(txcmp) ==
         CMPL_BASE_TYPE_HWRM_FWD_REQ) ||
        (TX_CMP_TYPE(txcmp) ==
         CMPL_BASE_TYPE_HWRM_ASYNC_EVENT))) {
   bnxt_hwrm_handler(bp, txcmp);
  }
  raw_cons = NEXT_RAW_CMP(raw_cons);

  if (rx_pkts && rx_pkts == budget) {
   cpr->has_more_work = 1;
   break;
  }
 }

 if (event & BNXT_REDIRECT_EVENT)
  xdp_do_flush_map();

 if (event & BNXT_TX_EVENT) {
  struct bnxt_tx_ring_info *txr = bnapi->tx_ring;
  u16 prod = txr->tx_prod;


  wmb();

  bnxt_db_write_relaxed(bp, &txr->tx_db, prod);
 }

 cpr->cp_raw_cons = raw_cons;
 bnapi->tx_pkts += tx_pkts;
 bnapi->events |= event;
 return rx_pkts;
}
