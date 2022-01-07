
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wil_status_ring {int elem_size; int swhead; scalar_t__ va; } ;
struct wil_rx_status_compressed {int d0; } ;


 int WIL_GET_BITS (int ,int,int) ;
 int memcpy (void*,void*,int) ;
 int rmb () ;

__attribute__((used)) static inline
void wil_get_next_rx_status_msg(struct wil_status_ring *sring, u8 *dr_bit,
    void *msg)
{
 struct wil_rx_status_compressed *_msg;

 _msg = (struct wil_rx_status_compressed *)
  (sring->va + (sring->elem_size * sring->swhead));
 *dr_bit = WIL_GET_BITS(_msg->d0, 31, 31);

 rmb();
 memcpy(msg, (void *)_msg, sring->elem_size);
}
