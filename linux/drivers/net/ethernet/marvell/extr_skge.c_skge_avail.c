
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_ring {scalar_t__ to_clean; scalar_t__ to_use; int count; } ;


 int smp_mb () ;

__attribute__((used)) static inline int skge_avail(const struct skge_ring *ring)
{
 smp_mb();
 return ((ring->to_clean > ring->to_use) ? 0 : ring->count)
  + (ring->to_clean - ring->to_use) - 1;
}
