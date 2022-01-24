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
struct vxgedev {struct __vxge_hw_device* devh; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;
struct __vxge_hw_device {int dummy; } ;

/* Variables and functions */
 struct vxgedev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct __vxge_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				       struct ethtool_pauseparam *ep)
{
	struct vxgedev *vdev = FUNC0(dev);
	struct __vxge_hw_device *hldev = vdev->devh;

	FUNC1(hldev, 0, &ep->tx_pause, &ep->rx_pause);
}