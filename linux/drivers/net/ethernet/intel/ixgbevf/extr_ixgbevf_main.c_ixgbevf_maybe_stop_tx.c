
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_ring {int dummy; } ;


 int __ixgbevf_maybe_stop_tx (struct ixgbevf_ring*,int) ;
 int ixgbevf_desc_unused (struct ixgbevf_ring*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int ixgbevf_maybe_stop_tx(struct ixgbevf_ring *tx_ring, int size)
{
 if (likely(ixgbevf_desc_unused(tx_ring) >= size))
  return 0;
 return __ixgbevf_maybe_stop_tx(tx_ring, size);
}
