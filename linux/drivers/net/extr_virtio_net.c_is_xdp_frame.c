
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VIRTIO_XDP_FLAG ;

__attribute__((used)) static bool is_xdp_frame(void *ptr)
{
 return (unsigned long)ptr & VIRTIO_XDP_FLAG;
}
