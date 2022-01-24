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
struct usbnet {int /*<<< orphan*/  udev; TYPE_1__* driver_info; int /*<<< orphan*/  driver_name; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_VERSION ; 
 struct usbnet* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3 (struct net_device *net, struct ethtool_drvinfo *info)
{
	struct usbnet *dev = FUNC0(net);

	FUNC1 (info->driver, dev->driver_name, sizeof info->driver);
	FUNC1 (info->version, DRIVER_VERSION, sizeof info->version);
	FUNC1 (info->fw_version, dev->driver_info->description,
		sizeof info->fw_version);
	FUNC2 (dev->udev, info->bus_info, sizeof info->bus_info);
}