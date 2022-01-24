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
struct stmmac_priv {TYPE_1__* plat; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {scalar_t__ has_xgmac; scalar_t__ has_gmac4; scalar_t__ has_gmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MODULE_VERSION ; 
 int /*<<< orphan*/  GMAC_ETHTOOL_NAME ; 
 int /*<<< orphan*/  MAC100_ETHTOOL_NAME ; 
 int /*<<< orphan*/  XGMAC_ETHTOOL_NAME ; 
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				      struct ethtool_drvinfo *info)
{
	struct stmmac_priv *priv = FUNC0(dev);

	if (priv->plat->has_gmac || priv->plat->has_gmac4)
		FUNC1(info->driver, GMAC_ETHTOOL_NAME, sizeof(info->driver));
	else if (priv->plat->has_xgmac)
		FUNC1(info->driver, XGMAC_ETHTOOL_NAME, sizeof(info->driver));
	else
		FUNC1(info->driver, MAC100_ETHTOOL_NAME,
			sizeof(info->driver));

	FUNC1(info->version, DRV_MODULE_VERSION, sizeof(info->version));
}