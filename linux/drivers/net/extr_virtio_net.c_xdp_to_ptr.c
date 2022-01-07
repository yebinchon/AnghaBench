
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;


 unsigned long VIRTIO_XDP_FLAG ;

__attribute__((used)) static void *xdp_to_ptr(struct xdp_frame *ptr)
{
 return (void *)((unsigned long)ptr | VIRTIO_XDP_FLAG);
}
