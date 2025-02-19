
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct ath_hw {int ts_size; void* ts_ring; void* ts_paddr_end; void* ts_paddr_start; } ;
struct ar9003_txs {int dummy; } ;


 int ath9k_hw_reset_txstatus_ring (struct ath_hw*) ;

void ath9k_hw_setup_statusring(struct ath_hw *ah, void *ts_start,
          u32 ts_paddr_start,
          u16 size)
{

 ah->ts_paddr_start = ts_paddr_start;
 ah->ts_paddr_end = ts_paddr_start + (size * sizeof(struct ar9003_txs));
 ah->ts_size = size;
 ah->ts_ring = ts_start;

 ath9k_hw_reset_txstatus_ring(ah);
}
