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
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int BOND_ABI_VERSION ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *bond_dev,
				     struct ethtool_drvinfo *drvinfo)
{
	FUNC1(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
	FUNC1(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
	FUNC0(drvinfo->fw_version, sizeof(drvinfo->fw_version), "%d",
		 BOND_ABI_VERSION);
}