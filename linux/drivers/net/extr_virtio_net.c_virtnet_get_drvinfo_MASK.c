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
struct virtnet_info {struct virtio_device* vdev; } ;
struct virtio_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  VIRTNET_DRIVER_VERSION ; 
 struct virtnet_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				struct ethtool_drvinfo *info)
{
	struct virtnet_info *vi = FUNC0(dev);
	struct virtio_device *vdev = vi->vdev;

	FUNC1(info->driver, KBUILD_MODNAME, sizeof(info->driver));
	FUNC1(info->version, VIRTNET_DRIVER_VERSION, sizeof(info->version));
	FUNC1(info->bus_info, FUNC2(vdev), sizeof(info->bus_info));

}