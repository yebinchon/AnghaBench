
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {scalar_t__ swhead; } ;


 scalar_t__ wil_ring_next_tail (struct wil_ring*) ;

__attribute__((used)) static inline int wil_ring_is_full(struct wil_ring *ring)
{
 return wil_ring_next_tail(ring) == ring->swhead;
}
