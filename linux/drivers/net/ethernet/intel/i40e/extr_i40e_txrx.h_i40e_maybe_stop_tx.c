
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int dummy; } ;


 int I40E_DESC_UNUSED (struct i40e_ring*) ;
 int __i40e_maybe_stop_tx (struct i40e_ring*,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size)
{
 if (likely(I40E_DESC_UNUSED(tx_ring) >= size))
  return 0;
 return __i40e_maybe_stop_tx(tx_ring, size);
}
