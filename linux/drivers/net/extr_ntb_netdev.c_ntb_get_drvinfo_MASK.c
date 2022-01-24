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
struct ntb_netdev {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  NTB_NETDEV_VER ; 
 struct ntb_netdev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
			    struct ethtool_drvinfo *info)
{
	struct ntb_netdev *dev = FUNC0(ndev);

	FUNC2(info->driver, KBUILD_MODNAME, sizeof(info->driver));
	FUNC2(info->version, NTB_NETDEV_VER, sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(dev->pdev), sizeof(info->bus_info));
}