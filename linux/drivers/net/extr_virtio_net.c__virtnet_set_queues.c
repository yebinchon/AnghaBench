
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct virtnet_info {int refill; int curr_queue_pairs; TYPE_1__* ctrl; int vdev; int has_cvq; struct net_device* dev; } ;
struct scatterlist {int dummy; } ;
struct net_device {int flags; int dev; } ;
struct TYPE_4__ {int virtqueue_pairs; } ;
struct TYPE_3__ {TYPE_2__ mq; } ;


 int EINVAL ;
 int IFF_UP ;
 int VIRTIO_NET_CTRL_MQ ;
 int VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET ;
 int VIRTIO_NET_F_MQ ;
 int cpu_to_virtio16 (int ,int ) ;
 int dev_warn (int *,char*,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int sg_init_one (struct scatterlist*,TYPE_2__*,int) ;
 int virtio_has_feature (int ,int ) ;
 int virtnet_send_command (struct virtnet_info*,int ,int ,struct scatterlist*) ;

__attribute__((used)) static int _virtnet_set_queues(struct virtnet_info *vi, u16 queue_pairs)
{
 struct scatterlist sg;
 struct net_device *dev = vi->dev;

 if (!vi->has_cvq || !virtio_has_feature(vi->vdev, VIRTIO_NET_F_MQ))
  return 0;

 vi->ctrl->mq.virtqueue_pairs = cpu_to_virtio16(vi->vdev, queue_pairs);
 sg_init_one(&sg, &vi->ctrl->mq, sizeof(vi->ctrl->mq));

 if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_MQ,
      VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET, &sg)) {
  dev_warn(&dev->dev, "Fail to set num of queue pairs to %d\n",
    queue_pairs);
  return -EINVAL;
 } else {
  vi->curr_queue_pairs = queue_pairs;

  if (dev->flags & IFF_UP)
   schedule_delayed_work(&vi->refill, 0);
 }

 return 0;
}
