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
struct bdx_priv {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 char* BDX_DRV_NAME ; 
 char* BDX_DRV_VERSION ; 
 struct bdx_priv* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
	struct bdx_priv *priv = FUNC0(netdev);

	FUNC2(drvinfo->driver, BDX_DRV_NAME, sizeof(drvinfo->driver));
	FUNC2(drvinfo->version, BDX_DRV_VERSION, sizeof(drvinfo->version));
	FUNC2(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
	FUNC2(drvinfo->bus_info, FUNC1(priv->pdev),
		sizeof(drvinfo->bus_info));
}