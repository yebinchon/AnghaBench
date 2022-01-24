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
struct smsc9420_pdata {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 struct smsc9420_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
					 struct ethtool_drvinfo *drvinfo)
{
	struct smsc9420_pdata *pd = FUNC0(netdev);

	FUNC2(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
	FUNC2(drvinfo->bus_info, FUNC1(pd->pdev),
		sizeof(drvinfo->bus_info));
	FUNC2(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
}