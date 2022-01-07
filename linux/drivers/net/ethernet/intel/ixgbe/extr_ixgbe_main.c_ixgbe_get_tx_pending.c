
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct ixgbe_ring {unsigned int next_to_clean; unsigned int next_to_use; unsigned int count; } ;



__attribute__((used)) static u64 ixgbe_get_tx_pending(struct ixgbe_ring *ring)
{
 unsigned int head, tail;

 head = ring->next_to_clean;
 tail = ring->next_to_use;

 return ((head <= tail) ? tail : tail + ring->count) - head;
}
