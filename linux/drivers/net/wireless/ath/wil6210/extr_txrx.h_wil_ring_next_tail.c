
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil_ring {int swtail; int size; } ;



__attribute__((used)) static inline u32 wil_ring_next_tail(struct wil_ring *ring)
{
 return (ring->swtail + 1) % ring->size;
}
