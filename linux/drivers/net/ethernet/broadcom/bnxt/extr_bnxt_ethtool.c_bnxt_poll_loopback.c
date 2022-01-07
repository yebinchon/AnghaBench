
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int cp_raw_cons; struct tx_cmp** cp_desc_ring; } ;
struct bnxt {int dummy; } ;


 scalar_t__ CMP_TYPE_RX_L2_CMP ;
 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int EIO ;
 int NEXT_RAW_CMP (int ) ;
 int RING_CMP (int ) ;
 scalar_t__ TX_CMP_TYPE (struct tx_cmp*) ;
 int TX_CMP_VALID (struct tx_cmp*,int ) ;
 int bnxt_rx_loopback (struct bnxt*,struct bnxt_cp_ring_info*,int ,int) ;
 int dma_rmb () ;
 int udelay (int) ;

__attribute__((used)) static int bnxt_poll_loopback(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
         int pkt_size)
{
 struct tx_cmp *txcmp;
 int rc = -EIO;
 u32 raw_cons;
 u32 cons;
 int i;

 raw_cons = cpr->cp_raw_cons;
 for (i = 0; i < 200; i++) {
  cons = RING_CMP(raw_cons);
  txcmp = &cpr->cp_desc_ring[CP_RING(cons)][CP_IDX(cons)];

  if (!TX_CMP_VALID(txcmp, raw_cons)) {
   udelay(5);
   continue;
  }




  dma_rmb();
  if (TX_CMP_TYPE(txcmp) == CMP_TYPE_RX_L2_CMP) {
   rc = bnxt_rx_loopback(bp, cpr, raw_cons, pkt_size);
   raw_cons = NEXT_RAW_CMP(raw_cons);
   raw_cons = NEXT_RAW_CMP(raw_cons);
   break;
  }
  raw_cons = NEXT_RAW_CMP(raw_cons);
 }
 cpr->cp_raw_cons = raw_cons;
 return rc;
}
