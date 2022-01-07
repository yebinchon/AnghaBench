
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;


 int __skb_array_destroy_skb (void*) ;
 scalar_t__ tun_is_xdp_frame (void*) ;
 struct xdp_frame* tun_ptr_to_xdp (void*) ;
 int xdp_return_frame (struct xdp_frame*) ;

void tun_ptr_free(void *ptr)
{
 if (!ptr)
  return;
 if (tun_is_xdp_frame(ptr)) {
  struct xdp_frame *xdpf = tun_ptr_to_xdp(ptr);

  xdp_return_frame(xdpf);
 } else {
  __skb_array_destroy_skb(ptr);
 }
}
