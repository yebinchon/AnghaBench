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
struct au1000_private {int mac_id; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 char* DRV_VERSION ; 
 struct au1000_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct au1000_private *aup = FUNC0(dev);

	FUNC2(info->driver, DRV_NAME, sizeof(info->driver));
	FUNC2(info->version, DRV_VERSION, sizeof(info->version));
	FUNC1(info->bus_info, sizeof(info->bus_info), "%s %d", DRV_NAME,
		 aup->mac_id);
}