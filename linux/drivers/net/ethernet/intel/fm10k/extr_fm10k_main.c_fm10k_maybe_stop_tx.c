
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_ring {int dummy; } ;


 int __fm10k_maybe_stop_tx (struct fm10k_ring*,scalar_t__) ;
 scalar_t__ fm10k_desc_unused (struct fm10k_ring*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int fm10k_maybe_stop_tx(struct fm10k_ring *tx_ring, u16 size)
{
 if (likely(fm10k_desc_unused(tx_ring) >= size))
  return 0;
 return __fm10k_maybe_stop_tx(tx_ring, size);
}
