
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {int size; } ;


 int wil_ring_used_tx (struct wil_ring*) ;

__attribute__((used)) static inline int wil_ring_avail_tx(struct wil_ring *ring)
{
 return ring->size - wil_ring_used_tx(ring) - 1;
}
