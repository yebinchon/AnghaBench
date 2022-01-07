
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {int swhead; int size; } ;



__attribute__((used)) static inline void wil_ring_advance_head(struct wil_ring *ring, int n)
{
 ring->swhead = (ring->swhead + n) % ring->size;
}
