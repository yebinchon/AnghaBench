
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int ts_size; int ts_paddr_end; int ts_paddr_start; scalar_t__ ts_ring; scalar_t__ ts_tail; } ;
struct ar9003_txs {int dummy; } ;


 int AR_Q_STATUS_RING_END ;
 int AR_Q_STATUS_RING_START ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int XMIT ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int ,int ,scalar_t__,int) ;
 int memset (void*,int ,int) ;

void ath9k_hw_reset_txstatus_ring(struct ath_hw *ah)
{
 ah->ts_tail = 0;

 memset((void *) ah->ts_ring, 0,
  ah->ts_size * sizeof(struct ar9003_txs));

 ath_dbg(ath9k_hw_common(ah), XMIT,
  "TS Start 0x%x End 0x%x Virt %p, Size %d\n",
  ah->ts_paddr_start, ah->ts_paddr_end,
  ah->ts_ring, ah->ts_size);

 REG_WRITE(ah, AR_Q_STATUS_RING_START, ah->ts_paddr_start);
 REG_WRITE(ah, AR_Q_STATUS_RING_END, ah->ts_paddr_end);
}
