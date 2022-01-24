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
struct efx_nic {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_DRIVER_VERSION ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 
 struct efx_nic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *net_dev,
				    struct ethtool_drvinfo *info)
{
	struct efx_nic *efx = FUNC1(net_dev);

	FUNC3(info->driver, KBUILD_MODNAME, sizeof(info->driver));
	FUNC3(info->version, EFX_DRIVER_VERSION, sizeof(info->version));
	FUNC0(efx, info->fw_version,
			     sizeof(info->fw_version));
	FUNC3(info->bus_info, FUNC2(efx->pci_dev), sizeof(info->bus_info));
}