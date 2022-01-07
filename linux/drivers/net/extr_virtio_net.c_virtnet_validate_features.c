
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int VIRTIO_NET_F_CTRL_MAC_ADDR ;
 int VIRTIO_NET_F_CTRL_RX ;
 int VIRTIO_NET_F_CTRL_VLAN ;
 int VIRTIO_NET_F_CTRL_VQ ;
 int VIRTIO_NET_F_GUEST_ANNOUNCE ;
 int VIRTIO_NET_F_MQ ;
 scalar_t__ VIRTNET_FAIL_ON (struct virtio_device*,int ,char*) ;
 int virtio_has_feature (struct virtio_device*,int ) ;

__attribute__((used)) static bool virtnet_validate_features(struct virtio_device *vdev)
{
 if (!virtio_has_feature(vdev, VIRTIO_NET_F_CTRL_VQ) &&
     (VIRTNET_FAIL_ON(vdev, VIRTIO_NET_F_CTRL_RX,
        "VIRTIO_NET_F_CTRL_VQ") ||
      VIRTNET_FAIL_ON(vdev, VIRTIO_NET_F_CTRL_VLAN,
        "VIRTIO_NET_F_CTRL_VQ") ||
      VIRTNET_FAIL_ON(vdev, VIRTIO_NET_F_GUEST_ANNOUNCE,
        "VIRTIO_NET_F_CTRL_VQ") ||
      VIRTNET_FAIL_ON(vdev, VIRTIO_NET_F_MQ, "VIRTIO_NET_F_CTRL_VQ") ||
      VIRTNET_FAIL_ON(vdev, VIRTIO_NET_F_CTRL_MAC_ADDR,
        "VIRTIO_NET_F_CTRL_VQ"))) {
  return 0;
 }

 return 1;
}
