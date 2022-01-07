
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct virtnet_info {TYPE_2__* dev; TYPE_1__* ctrl; int vdev; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int offloads; } ;


 int EINVAL ;
 int VIRTIO_NET_CTRL_GUEST_OFFLOADS ;
 int VIRTIO_NET_CTRL_GUEST_OFFLOADS_SET ;
 int cpu_to_virtio64 (int ,int ) ;
 int dev_warn (int *,char*) ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int virtnet_send_command (struct virtnet_info*,int ,int ,struct scatterlist*) ;

__attribute__((used)) static int virtnet_set_guest_offloads(struct virtnet_info *vi, u64 offloads)
{
 struct scatterlist sg;
 vi->ctrl->offloads = cpu_to_virtio64(vi->vdev, offloads);

 sg_init_one(&sg, &vi->ctrl->offloads, sizeof(vi->ctrl->offloads));

 if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_GUEST_OFFLOADS,
      VIRTIO_NET_CTRL_GUEST_OFFLOADS_SET, &sg)) {
  dev_warn(&vi->dev->dev, "Fail to set guest offload.\n");
  return -EINVAL;
 }

 return 0;
}
