
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_status_ring {int elem_size; int swhead; scalar_t__ va; } ;
struct wil_rx_status_compressed {scalar_t__ buff_id; } ;



__attribute__((used)) static inline void wil_rx_status_reset_buff_id(struct wil_status_ring *s)
{
 ((struct wil_rx_status_compressed *)
  (s->va + (s->elem_size * s->swhead)))->buff_id = 0;
}
