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
typedef  int u8 ;
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xgene_enet_pdata {int tx_pause; int rx_pause; TYPE_1__* mac_ops; int /*<<< orphan*/  pause_autoneg; } ;
struct phy_device {scalar_t__ asym_pause; scalar_t__ pause; int /*<<< orphan*/  duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flowctl_rx ) (struct xgene_enet_pdata*,void*) ;int /*<<< orphan*/  (* flowctl_tx ) (struct xgene_enet_pdata*,void*) ;} ;

/* Variables and functions */
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 int /*<<< orphan*/  LPA_PAUSE_ASYM ; 
 int /*<<< orphan*/  LPA_PAUSE_CAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgene_enet_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_pdata*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,void*) ; 

__attribute__((used)) static u32 FUNC5(struct net_device *ndev)
{
	struct xgene_enet_pdata *pdata = FUNC2(ndev);
	struct phy_device *phydev = ndev->phydev;
	u16 lcladv, rmtadv = 0;
	u32 rx_pause, tx_pause;
	u8 flowctl = 0;

	if (!phydev->duplex || !pdata->pause_autoneg)
		return 0;

	if (pdata->tx_pause)
		flowctl |= FLOW_CTRL_TX;

	if (pdata->rx_pause)
		flowctl |= FLOW_CTRL_RX;

	lcladv = FUNC0(flowctl);

	if (phydev->pause)
		rmtadv = LPA_PAUSE_CAP;

	if (phydev->asym_pause)
		rmtadv |= LPA_PAUSE_ASYM;

	flowctl = FUNC1(lcladv, rmtadv);
	tx_pause = !!(flowctl & FLOW_CTRL_TX);
	rx_pause = !!(flowctl & FLOW_CTRL_RX);

	if (tx_pause != pdata->tx_pause) {
		pdata->tx_pause = tx_pause;
		pdata->mac_ops->flowctl_tx(pdata, pdata->tx_pause);
	}

	if (rx_pause != pdata->rx_pause) {
		pdata->rx_pause = rx_pause;
		pdata->mac_ops->flowctl_rx(pdata, pdata->rx_pause);
	}

	return 0;
}