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
typedef  int /*<<< orphan*/  u64 ;
struct virtnet_info {TYPE_2__* dev; TYPE_1__* ctrl; int /*<<< orphan*/  vdev; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  offloads; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VIRTIO_NET_CTRL_GUEST_OFFLOADS ; 
 int /*<<< orphan*/  VIRTIO_NET_CTRL_GUEST_OFFLOADS_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scatterlist*) ; 

__attribute__((used)) static int FUNC4(struct virtnet_info *vi, u64 offloads)
{
	struct scatterlist sg;
	vi->ctrl->offloads = FUNC0(vi->vdev, offloads);

	FUNC2(&sg, &vi->ctrl->offloads, sizeof(vi->ctrl->offloads));

	if (!FUNC3(vi, VIRTIO_NET_CTRL_GUEST_OFFLOADS,
				  VIRTIO_NET_CTRL_GUEST_OFFLOADS_SET, &sg)) {
		FUNC1(&vi->dev->dev, "Fail to set guest offload.\n");
		return -EINVAL;
	}

	return 0;
}