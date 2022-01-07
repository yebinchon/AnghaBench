
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wil_status_ring {int elem_size; int swhead; scalar_t__ va; } ;
struct wil_ring_tx_status {int desc_ready; } ;


 int TX_STATUS_DESC_READY_POS ;
 int rmb () ;

__attribute__((used)) static inline void
wil_get_next_tx_status_msg(struct wil_status_ring *sring, u8 *dr_bit,
      struct wil_ring_tx_status *msg)
{
 struct wil_ring_tx_status *_msg = (struct wil_ring_tx_status *)
  (sring->va + (sring->elem_size * sring->swhead));

 *dr_bit = _msg->desc_ready >> TX_STATUS_DESC_READY_POS;

 rmb();
 *msg = *_msg;
}
