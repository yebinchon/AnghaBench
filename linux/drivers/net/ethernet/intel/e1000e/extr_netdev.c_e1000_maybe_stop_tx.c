
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_ring {int count; } ;


 int BUG_ON (int) ;
 int __e1000_maybe_stop_tx (struct e1000_ring*,int) ;
 int e1000_desc_unused (struct e1000_ring*) ;

__attribute__((used)) static int e1000_maybe_stop_tx(struct e1000_ring *tx_ring, int size)
{
 BUG_ON(size > tx_ring->count);

 if (e1000_desc_unused(tx_ring) >= size)
  return 0;
 return __e1000_maybe_stop_tx(tx_ring, size);
}
