
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {scalar_t__ sw_tail; scalar_t__ sw_head; int size; } ;



__attribute__((used)) static inline unsigned int aq_ring_avail_dx(struct aq_ring_s *self)
{
 return (((self->sw_tail >= self->sw_head)) ?
  (self->size - 1) - self->sw_tail + self->sw_head :
  self->sw_head - self->sw_tail - 1);
}
