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
struct ef4_nic {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EF4_DRIVER_VERSION ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct ef4_nic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *net_dev,
				    struct ethtool_drvinfo *info)
{
	struct ef4_nic *efx = FUNC0(net_dev);

	FUNC2(info->driver, KBUILD_MODNAME, sizeof(info->driver));
	FUNC2(info->version, EF4_DRIVER_VERSION, sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(efx->pci_dev), sizeof(info->bus_info));
}