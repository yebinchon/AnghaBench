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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct cp_private {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 struct cp_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3 (struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct cp_private *cp = FUNC0(dev);

	FUNC2(info->driver, DRV_NAME, sizeof(info->driver));
	FUNC2(info->version, DRV_VERSION, sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(cp->pdev), sizeof(info->bus_info));
}