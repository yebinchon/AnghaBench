
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {unsigned int size; } ;



__attribute__((used)) static inline unsigned int aq_ring_next_dx(struct aq_ring_s *self,
        unsigned int dx)
{
 return (++dx >= self->size) ? 0U : dx;
}
