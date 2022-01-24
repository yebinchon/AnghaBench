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
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct atl1e_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 char* atl1e_driver_name ; 
 char* atl1e_driver_version ; 
 struct atl1e_adapter* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
		struct ethtool_drvinfo *drvinfo)
{
	struct atl1e_adapter *adapter = FUNC0(netdev);

	FUNC2(drvinfo->driver,  atl1e_driver_name, sizeof(drvinfo->driver));
	FUNC2(drvinfo->version, atl1e_driver_version,
		sizeof(drvinfo->version));
	FUNC2(drvinfo->fw_version, "L1e", sizeof(drvinfo->fw_version));
	FUNC2(drvinfo->bus_info, FUNC1(adapter->pdev),
		sizeof(drvinfo->bus_info));
}