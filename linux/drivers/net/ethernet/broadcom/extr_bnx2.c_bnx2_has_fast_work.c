
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2_tx_ring_info {scalar_t__ hw_tx_cons; } ;
struct bnx2_rx_ring_info {scalar_t__ rx_cons; } ;
struct bnx2_napi {struct bnx2_rx_ring_info rx_ring; struct bnx2_tx_ring_info tx_ring; } ;


 scalar_t__ bnx2_get_hw_rx_cons (struct bnx2_napi*) ;
 scalar_t__ bnx2_get_hw_tx_cons (struct bnx2_napi*) ;

__attribute__((used)) static inline int
bnx2_has_fast_work(struct bnx2_napi *bnapi)
{
 struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;
 struct bnx2_rx_ring_info *rxr = &bnapi->rx_ring;

 if ((bnx2_get_hw_rx_cons(bnapi) != rxr->rx_cons) ||
     (bnx2_get_hw_tx_cons(bnapi) != txr->hw_tx_cons))
  return 1;
 return 0;
}
