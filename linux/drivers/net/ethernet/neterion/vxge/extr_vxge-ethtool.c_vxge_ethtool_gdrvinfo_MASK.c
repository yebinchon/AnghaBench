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
struct vxgedev {int /*<<< orphan*/  pdev; int /*<<< orphan*/  fw_version; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  VXGE_DRIVER_NAME ; 
 struct vxgedev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				  struct ethtool_drvinfo *info)
{
	struct vxgedev *vdev = FUNC0(dev);
	FUNC2(info->driver, VXGE_DRIVER_NAME, sizeof(info->driver));
	FUNC2(info->version, DRV_VERSION, sizeof(info->version));
	FUNC2(info->fw_version, vdev->fw_version, sizeof(info->fw_version));
	FUNC2(info->bus_info, FUNC1(vdev->pdev), sizeof(info->bus_info));
}