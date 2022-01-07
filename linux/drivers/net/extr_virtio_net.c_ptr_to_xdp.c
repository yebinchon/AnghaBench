
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;


 unsigned long VIRTIO_XDP_FLAG ;

__attribute__((used)) static struct xdp_frame *ptr_to_xdp(void *ptr)
{
 return (struct xdp_frame *)((unsigned long)ptr & ~VIRTIO_XDP_FLAG);
}
