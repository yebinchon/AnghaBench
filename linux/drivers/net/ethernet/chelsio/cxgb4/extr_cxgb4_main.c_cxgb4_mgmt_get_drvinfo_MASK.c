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
struct adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cxgb4_driver_name ; 
 int /*<<< orphan*/  cxgb4_driver_version ; 
 struct adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				   struct ethtool_drvinfo *info)
{
	struct adapter *adapter = FUNC0(dev);

	FUNC2(info->driver, cxgb4_driver_name, sizeof(info->driver));
	FUNC2(info->version, cxgb4_driver_version,
		sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(adapter->pdev),
		sizeof(info->bus_info));
}