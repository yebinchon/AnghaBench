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
struct TYPE_2__ {int /*<<< orphan*/  liquidio_firmware_version; } ;
struct octeon_device {int /*<<< orphan*/  pci_dev; TYPE_1__ fw_info; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ETHTOOL_FWVERS_LEN ; 
 struct lio* FUNC0 (struct net_device*) ; 
 char* LIQUIDIO_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_drvinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
	struct octeon_device *oct;
	struct lio *lio;

	lio = FUNC0(netdev);
	oct = lio->oct_dev;

	FUNC1(drvinfo, 0, sizeof(struct ethtool_drvinfo));
	FUNC3(drvinfo->driver, "liquidio_vf");
	FUNC3(drvinfo->version, LIQUIDIO_VERSION);
	FUNC4(drvinfo->fw_version, oct->fw_info.liquidio_firmware_version,
		ETHTOOL_FWVERS_LEN);
	FUNC4(drvinfo->bus_info, FUNC2(oct->pci_dev), 32);
}