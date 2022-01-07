
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int len; } ;


 int __skb_array_len_with_tag (void*) ;
 scalar_t__ likely (void*) ;
 scalar_t__ tun_is_xdp_frame (void*) ;
 struct xdp_frame* tun_ptr_to_xdp (void*) ;

__attribute__((used)) static int tun_ptr_peek_len(void *ptr)
{
 if (likely(ptr)) {
  if (tun_is_xdp_frame(ptr)) {
   struct xdp_frame *xdpf = tun_ptr_to_xdp(ptr);

   return xdpf->len;
  }
  return __skb_array_len_with_tag(ptr);
 } else {
  return 0;
 }
}
