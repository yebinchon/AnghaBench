
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {scalar_t__ sw_tail; scalar_t__ sw_head; scalar_t__ hw_head; } ;



int aq_ring_init(struct aq_ring_s *self)
{
 self->hw_head = 0;
 self->sw_head = 0;
 self->sw_tail = 0;
 return 0;
}
