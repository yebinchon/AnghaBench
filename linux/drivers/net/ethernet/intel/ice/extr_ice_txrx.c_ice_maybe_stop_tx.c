
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ring {int dummy; } ;


 unsigned int ICE_DESC_UNUSED (struct ice_ring*) ;
 int __ice_maybe_stop_tx (struct ice_ring*,unsigned int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int ice_maybe_stop_tx(struct ice_ring *tx_ring, unsigned int size)
{
 if (likely(ICE_DESC_UNUSED(tx_ring) >= size))
  return 0;

 return __ice_maybe_stop_tx(tx_ring, size);
}
