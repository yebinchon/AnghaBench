
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_host_tx_ring {scalar_t__ producer; scalar_t__ sw_consumer; scalar_t__ num_desc; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static inline u32 qlcnic_tx_avail(struct qlcnic_host_tx_ring *tx_ring)
{
 if (likely(tx_ring->producer < tx_ring->sw_consumer))
  return tx_ring->sw_consumer - tx_ring->producer;
 else
  return tx_ring->sw_consumer + tx_ring->num_desc -
    tx_ring->producer;
}
