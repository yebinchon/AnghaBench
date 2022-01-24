#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* phy_config_aneg ) (struct xgbe_prv_data*) ;} ;
struct ethtool_link_ksettings {int dummy; } ;
struct TYPE_3__ {scalar_t__ autoneg; scalar_t__ rx_pause; scalar_t__ tx_pause; scalar_t__ pause_autoneg; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_2__ phy_if; TYPE_1__ phy; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  Asym_Pause ; 
 int EINVAL ; 
 int /*<<< orphan*/  Pause ; 
 scalar_t__ FUNC0 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct xgbe_prv_data* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int FUNC6 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev,
			       struct ethtool_pauseparam *pause)
{
	struct xgbe_prv_data *pdata = FUNC4(netdev);
	struct ethtool_link_ksettings *lks = &pdata->phy.lks;
	int ret = 0;

	if (pause->autoneg && (pdata->phy.autoneg != AUTONEG_ENABLE)) {
		FUNC3(netdev,
			   "autoneg disabled, pause autoneg not available\n");
		return -EINVAL;
	}

	pdata->phy.pause_autoneg = pause->autoneg;
	pdata->phy.tx_pause = pause->tx_pause;
	pdata->phy.rx_pause = pause->rx_pause;

	FUNC1(lks, Pause);
	FUNC1(lks, Asym_Pause);

	if (pause->rx_pause) {
		FUNC2(lks, Pause);
		FUNC2(lks, Asym_Pause);
	}

	if (pause->tx_pause) {
		/* Equivalent to XOR of Asym_Pause */
		if (FUNC0(lks, Asym_Pause))
			FUNC1(lks, Asym_Pause);
		else
			FUNC2(lks, Asym_Pause);
	}

	if (FUNC5(netdev))
		ret = pdata->phy_if.phy_config_aneg(pdata);

	return ret;
}