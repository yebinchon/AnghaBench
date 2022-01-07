
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {scalar_t__ xdp_queue_pairs; } ;


 unsigned int VIRTIO_XDP_HEADROOM ;

__attribute__((used)) static unsigned int virtnet_get_headroom(struct virtnet_info *vi)
{
 return vi->xdp_queue_pairs ? VIRTIO_XDP_HEADROOM : 0;
}
