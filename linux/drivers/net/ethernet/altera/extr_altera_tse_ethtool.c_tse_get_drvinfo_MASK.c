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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct altera_tse_private {TYPE_1__* mac_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  megacore_revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_FWVERS_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct altera_tse_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
			    struct ethtool_drvinfo *info)
{
	struct altera_tse_private *priv = FUNC1(dev);
	u32 rev = FUNC0(&priv->mac_dev->megacore_revision);

	FUNC4(info->driver, "altera_tse");
	FUNC4(info->version, "v8.0");
	FUNC2(info->fw_version, ETHTOOL_FWVERS_LEN, "v%d.%d",
		 rev & 0xFFFF, (rev & 0xFFFF0000) >> 16);
	FUNC3(info->bus_info, "platform");
}