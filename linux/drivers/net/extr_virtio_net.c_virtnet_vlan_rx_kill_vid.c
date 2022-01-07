
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct virtnet_info {TYPE_1__* ctrl; int vdev; } ;
struct scatterlist {int dummy; } ;
struct net_device {int dev; } ;
typedef int __be16 ;
struct TYPE_2__ {int vid; } ;


 int VIRTIO_NET_CTRL_VLAN ;
 int VIRTIO_NET_CTRL_VLAN_DEL ;
 int cpu_to_virtio16 (int ,int ) ;
 int dev_warn (int *,char*,int ) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int virtnet_send_command (struct virtnet_info*,int ,int ,struct scatterlist*) ;

__attribute__((used)) static int virtnet_vlan_rx_kill_vid(struct net_device *dev,
        __be16 proto, u16 vid)
{
 struct virtnet_info *vi = netdev_priv(dev);
 struct scatterlist sg;

 vi->ctrl->vid = cpu_to_virtio16(vi->vdev, vid);
 sg_init_one(&sg, &vi->ctrl->vid, sizeof(vi->ctrl->vid));

 if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_VLAN,
      VIRTIO_NET_CTRL_VLAN_DEL, &sg))
  dev_warn(&dev->dev, "Failed to kill VLAN ID %d.\n", vid);
 return 0;
}
