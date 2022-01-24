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
struct fm10k_intfc {int /*<<< orphan*/  pdev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  fm10k_driver_name ; 
 int /*<<< orphan*/  fm10k_driver_version ; 
 struct fm10k_intfc* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
			      struct ethtool_drvinfo *info)
{
	struct fm10k_intfc *interface = FUNC0(dev);

	FUNC2(info->driver, fm10k_driver_name,
		sizeof(info->driver) - 1);
	FUNC2(info->version, fm10k_driver_version,
		sizeof(info->version) - 1);
	FUNC2(info->bus_info, FUNC1(interface->pdev),
		sizeof(info->bus_info) - 1);
}