#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct virtnet_info {TYPE_1__* ctrl; int /*<<< orphan*/  vdev; } ;
struct scatterlist {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_NET_CTRL_VLAN ; 
 int /*<<< orphan*/  VIRTIO_NET_CTRL_VLAN_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct virtnet_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scatterlist*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				   __be16 proto, u16 vid)
{
	struct virtnet_info *vi = FUNC2(dev);
	struct scatterlist sg;

	vi->ctrl->vid = FUNC0(vi->vdev, vid);
	FUNC3(&sg, &vi->ctrl->vid, sizeof(vi->ctrl->vid));

	if (!FUNC4(vi, VIRTIO_NET_CTRL_VLAN,
				  VIRTIO_NET_CTRL_VLAN_ADD, &sg))
		FUNC1(&dev->dev, "Failed to add VLAN ID %d.\n", vid);
	return 0;
}