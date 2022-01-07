
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iavf_ring {scalar_t__ next_to_clean; scalar_t__ count; int tail; } ;


 scalar_t__ readl (int ) ;

u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw)
{
 u32 head, tail;

 head = ring->next_to_clean;
 tail = readl(ring->tail);

 if (head != tail)
  return (head < tail) ?
   tail - head : (tail + ring->count - head);

 return 0;
}
