
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_ring {int dummy; } ;


 scalar_t__ ring_uses_large_buffer (struct igc_ring*) ;

__attribute__((used)) static inline unsigned int igc_rx_pg_order(struct igc_ring *ring)
{

 if (ring_uses_large_buffer(ring))
  return 1;

 return 0;
}
