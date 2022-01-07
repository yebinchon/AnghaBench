
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {int size; } ;



__attribute__((used)) static inline int wil_ring_wmark_low(struct wil_ring *ring)
{
 return ring->size / 8;
}
