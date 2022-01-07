
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct igb_ring {int dummy; } ;


 int __igb_maybe_stop_tx (struct igb_ring*,scalar_t__ const) ;
 scalar_t__ const igb_desc_unused (struct igb_ring*) ;

__attribute__((used)) static inline int igb_maybe_stop_tx(struct igb_ring *tx_ring, const u16 size)
{
 if (igb_desc_unused(tx_ring) >= size)
  return 0;
 return __igb_maybe_stop_tx(tx_ring, size);
}
