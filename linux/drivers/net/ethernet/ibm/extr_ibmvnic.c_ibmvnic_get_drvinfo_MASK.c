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
struct ibmvnic_adapter {int /*<<< orphan*/  fw_version; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVNIC_DRIVER_VERSION ; 
 int /*<<< orphan*/  ibmvnic_driver_name ; 
 struct ibmvnic_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
				struct ethtool_drvinfo *info)
{
	struct ibmvnic_adapter *adapter = FUNC0(netdev);

	FUNC1(info->driver, ibmvnic_driver_name, sizeof(info->driver));
	FUNC1(info->version, IBMVNIC_DRIVER_VERSION, sizeof(info->version));
	FUNC1(info->fw_version, adapter->fw_version,
		sizeof(info->fw_version));
}