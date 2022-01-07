
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree_skb (void*) ;
 scalar_t__ veth_is_xdp_frame (void*) ;
 int veth_ptr_to_xdp (void*) ;
 int xdp_return_frame (int ) ;

__attribute__((used)) static void veth_ptr_free(void *ptr)
{
 if (veth_is_xdp_frame(ptr))
  xdp_return_frame(veth_ptr_to_xdp(ptr));
 else
  kfree_skb(ptr);
}
