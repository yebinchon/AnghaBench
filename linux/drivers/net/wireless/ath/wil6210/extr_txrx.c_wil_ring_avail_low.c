
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {int dummy; } ;


 scalar_t__ wil_ring_avail_tx (struct wil_ring*) ;
 scalar_t__ wil_ring_wmark_low (struct wil_ring*) ;

__attribute__((used)) static inline int wil_ring_avail_low(struct wil_ring *ring)
{
 return wil_ring_avail_tx(ring) < wil_ring_wmark_low(ring);
}
