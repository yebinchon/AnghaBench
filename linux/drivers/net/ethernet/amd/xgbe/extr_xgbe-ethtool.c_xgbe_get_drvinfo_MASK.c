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
struct xgbe_hw_features {int /*<<< orphan*/  version; } ;
struct xgbe_prv_data {int /*<<< orphan*/  dev; struct xgbe_hw_features hw_feat; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVID ; 
 int /*<<< orphan*/  MAC_VR ; 
 int /*<<< orphan*/  SNPSVER ; 
 int /*<<< orphan*/  USERVER ; 
 int /*<<< orphan*/  XGBE_DRV_NAME ; 
 int /*<<< orphan*/  XGBE_DRV_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			     struct ethtool_drvinfo *drvinfo)
{
	struct xgbe_prv_data *pdata = FUNC2(netdev);
	struct xgbe_hw_features *hw_feat = &pdata->hw_feat;

	FUNC4(drvinfo->driver, XGBE_DRV_NAME, sizeof(drvinfo->driver));
	FUNC4(drvinfo->version, XGBE_DRV_VERSION, sizeof(drvinfo->version));
	FUNC4(drvinfo->bus_info, FUNC1(pdata->dev),
		sizeof(drvinfo->bus_info));
	FUNC3(drvinfo->fw_version, sizeof(drvinfo->fw_version), "%d.%d.%d",
		 FUNC0(hw_feat->version, MAC_VR, USERVER),
		 FUNC0(hw_feat->version, MAC_VR, DEVID),
		 FUNC0(hw_feat->version, MAC_VR, SNPSVER));
}