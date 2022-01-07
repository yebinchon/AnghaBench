
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil_ring {int swhead; int swtail; int size; } ;



__attribute__((used)) static inline int wil_ring_used_tx(struct wil_ring *ring)
{
 u32 swhead = ring->swhead;
 u32 swtail = ring->swtail;

 return (ring->size + swhead - swtail) % ring->size;
}
