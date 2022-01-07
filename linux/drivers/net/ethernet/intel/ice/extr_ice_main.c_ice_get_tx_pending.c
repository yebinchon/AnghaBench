
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ice_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; scalar_t__ count; } ;



__attribute__((used)) static u16 ice_get_tx_pending(struct ice_ring *ring)
{
 u16 head, tail;

 head = ring->next_to_clean;
 tail = ring->next_to_use;

 if (head != tail)
  return (head < tail) ?
   tail - head : (tail + ring->count - head);
 return 0;
}
