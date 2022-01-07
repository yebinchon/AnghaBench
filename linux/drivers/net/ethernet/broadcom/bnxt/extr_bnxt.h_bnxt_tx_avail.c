
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnxt_tx_ring_info {int tx_prod; int tx_cons; } ;
struct bnxt {int tx_ring_mask; scalar_t__ tx_ring_size; } ;


 int barrier () ;

__attribute__((used)) static inline u32 bnxt_tx_avail(struct bnxt *bp, struct bnxt_tx_ring_info *txr)
{

 barrier();

 return bp->tx_ring_size -
  ((txr->tx_prod - txr->tx_cons) & bp->tx_ring_mask);
}
