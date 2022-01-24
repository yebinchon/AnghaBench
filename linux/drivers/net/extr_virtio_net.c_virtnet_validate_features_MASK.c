#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_NET_F_CTRL_MAC_ADDR ; 
 int /*<<< orphan*/  VIRTIO_NET_F_CTRL_RX ; 
 int /*<<< orphan*/  VIRTIO_NET_F_CTRL_VLAN ; 
 int /*<<< orphan*/  VIRTIO_NET_F_CTRL_VQ ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_ANNOUNCE ; 
 int /*<<< orphan*/  VIRTIO_NET_F_MQ ; 
 scalar_t__ FUNC0 (struct virtio_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct virtio_device *vdev)
{
	if (!FUNC1(vdev, VIRTIO_NET_F_CTRL_VQ) &&
	    (FUNC0(vdev, VIRTIO_NET_F_CTRL_RX,
			     "VIRTIO_NET_F_CTRL_VQ") ||
	     FUNC0(vdev, VIRTIO_NET_F_CTRL_VLAN,
			     "VIRTIO_NET_F_CTRL_VQ") ||
	     FUNC0(vdev, VIRTIO_NET_F_GUEST_ANNOUNCE,
			     "VIRTIO_NET_F_CTRL_VQ") ||
	     FUNC0(vdev, VIRTIO_NET_F_MQ, "VIRTIO_NET_F_CTRL_VQ") ||
	     FUNC0(vdev, VIRTIO_NET_F_CTRL_MAC_ADDR,
			     "VIRTIO_NET_F_CTRL_VQ"))) {
		return false;
	}

	return true;
}