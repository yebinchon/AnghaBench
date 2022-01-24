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
struct e1000_adapter {int eeprom_vers; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  e1000e_driver_name ; 
 int /*<<< orphan*/  e1000e_driver_version ; 
 struct e1000_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			      struct ethtool_drvinfo *drvinfo)
{
	struct e1000_adapter *adapter = FUNC0(netdev);

	FUNC3(drvinfo->driver, e1000e_driver_name, sizeof(drvinfo->driver));
	FUNC3(drvinfo->version, e1000e_driver_version,
		sizeof(drvinfo->version));

	/* EEPROM image version # is reported as firmware version # for
	 * PCI-E controllers
	 */
	FUNC2(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%d.%d-%d",
		 (adapter->eeprom_vers & 0xF000) >> 12,
		 (adapter->eeprom_vers & 0x0FF0) >> 4,
		 (adapter->eeprom_vers & 0x000F));

	FUNC3(drvinfo->bus_info, FUNC1(adapter->pdev),
		sizeof(drvinfo->bus_info));
}