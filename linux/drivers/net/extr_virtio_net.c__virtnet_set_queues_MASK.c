#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct virtnet_info {int /*<<< orphan*/  refill; int /*<<< orphan*/  curr_queue_pairs; TYPE_1__* ctrl; int /*<<< orphan*/  vdev; int /*<<< orphan*/  has_cvq; struct net_device* dev; } ;
struct scatterlist {int dummy; } ;
struct net_device {int flags; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  virtqueue_pairs; } ;
struct TYPE_3__ {TYPE_2__ mq; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_UP ; 
 int /*<<< orphan*/  VIRTIO_NET_CTRL_MQ ; 
 int /*<<< orphan*/  VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET ; 
 int /*<<< orphan*/  VIRTIO_NET_F_MQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scatterlist*) ; 

__attribute__((used)) static int FUNC6(struct virtnet_info *vi, u16 queue_pairs)
{
	struct scatterlist sg;
	struct net_device *dev = vi->dev;

	if (!vi->has_cvq || !FUNC4(vi->vdev, VIRTIO_NET_F_MQ))
		return 0;

	vi->ctrl->mq.virtqueue_pairs = FUNC0(vi->vdev, queue_pairs);
	FUNC3(&sg, &vi->ctrl->mq, sizeof(vi->ctrl->mq));

	if (!FUNC5(vi, VIRTIO_NET_CTRL_MQ,
				  VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET, &sg)) {
		FUNC1(&dev->dev, "Fail to set num of queue pairs to %d\n",
			 queue_pairs);
		return -EINVAL;
	} else {
		vi->curr_queue_pairs = queue_pairs;
		/* virtnet_open() will refill when device is going to up. */
		if (dev->flags & IFF_UP)
			FUNC2(&vi->refill, 0);
	}

	return 0;
}