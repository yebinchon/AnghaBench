
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_status_ring {int swhead; int size; scalar_t__ desc_rdy_pol; } ;



__attribute__((used)) static inline void wil_sring_advance_swhead(struct wil_status_ring *sring)
{
 sring->swhead = (sring->swhead + 1) % sring->size;
 if (sring->swhead == 0)
  sring->desc_rdy_pol = 1 - sring->desc_rdy_pol;
}
