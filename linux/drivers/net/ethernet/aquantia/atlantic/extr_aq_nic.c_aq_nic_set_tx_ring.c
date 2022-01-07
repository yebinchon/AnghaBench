
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {int dummy; } ;
struct aq_nic_s {struct aq_ring_s** aq_ring_tx; } ;



void aq_nic_set_tx_ring(struct aq_nic_s *self, unsigned int idx,
   struct aq_ring_s *ring)
{
 self->aq_ring_tx[idx] = ring;
}
