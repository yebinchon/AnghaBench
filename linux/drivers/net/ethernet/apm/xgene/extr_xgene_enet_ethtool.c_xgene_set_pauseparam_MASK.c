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
struct xgene_enet_pdata {scalar_t__ phy_mode; int /*<<< orphan*/  rx_pause; TYPE_1__* mac_ops; int /*<<< orphan*/  tx_pause; scalar_t__ pause_autoneg; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; scalar_t__ autoneg; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flowctl_rx ) (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* flowctl_tx ) (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 struct xgene_enet_pdata* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,struct ethtool_pauseparam*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev,
				struct ethtool_pauseparam *pp)
{
	struct xgene_enet_pdata *pdata = FUNC0(ndev);
	struct phy_device *phydev = ndev->phydev;

	if (FUNC1(pdata->phy_mode) ||
	    pdata->phy_mode == PHY_INTERFACE_MODE_SGMII) {
		if (!phydev)
			return -EINVAL;

		if (!FUNC3(phydev, pp))
			return -EINVAL;

		pdata->pause_autoneg = pp->autoneg;
		pdata->tx_pause = pp->tx_pause;
		pdata->rx_pause = pp->rx_pause;

		FUNC2(phydev, pp->rx_pause,  pp->tx_pause);

		if (!pp->autoneg) {
			pdata->mac_ops->flowctl_tx(pdata, pdata->tx_pause);
			pdata->mac_ops->flowctl_rx(pdata, pdata->rx_pause);
		}
	} else {
		if (pp->autoneg)
			return -EINVAL;

		pdata->tx_pause = pp->tx_pause;
		pdata->rx_pause = pp->rx_pause;

		pdata->mac_ops->flowctl_tx(pdata, pdata->tx_pause);
		pdata->mac_ops->flowctl_rx(pdata, pdata->rx_pause);
	}

	return 0;
}