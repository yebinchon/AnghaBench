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
struct xgene_enet_pdata {struct platform_device* pdev; } ;
struct platform_device {char* name; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_FWVERS_LEN ; 
 char* XGENE_DRV_VERSION ; 
 struct xgene_enet_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev,
			      struct ethtool_drvinfo *info)
{
	struct xgene_enet_pdata *pdata = FUNC0(ndev);
	struct platform_device *pdev = pdata->pdev;

	FUNC3(info->driver, "xgene_enet");
	FUNC3(info->version, XGENE_DRV_VERSION);
	FUNC1(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
	FUNC2(info->bus_info, "%s", pdev->name);
}