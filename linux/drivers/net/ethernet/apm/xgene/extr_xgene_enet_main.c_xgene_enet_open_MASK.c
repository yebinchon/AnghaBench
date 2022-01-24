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
struct xgene_mac_ops {int /*<<< orphan*/  (* rx_enable ) (struct xgene_enet_pdata*) ;int /*<<< orphan*/  (* tx_enable ) (struct xgene_enet_pdata*) ;} ;
struct xgene_enet_pdata {int /*<<< orphan*/  link_work; int /*<<< orphan*/  rxq_cnt; int /*<<< orphan*/  txq_cnt; struct xgene_mac_ops* mac_ops; } ;
struct net_device {scalar_t__ phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_POLL_LINK_OFF ; 
 struct xgene_enet_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*) ; 
 int FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct xgene_enet_pdata *pdata = FUNC0(ndev);
	const struct xgene_mac_ops *mac_ops = pdata->mac_ops;
	int ret;

	ret = FUNC3(ndev, pdata->txq_cnt);
	if (ret)
		return ret;

	ret = FUNC2(ndev, pdata->rxq_cnt);
	if (ret)
		return ret;

	FUNC9(pdata);
	ret = FUNC10(ndev);
	if (ret)
		return ret;

	if (ndev->phydev) {
		FUNC5(ndev->phydev);
	} else {
		FUNC6(&pdata->link_work, PHY_POLL_LINK_OFF);
		FUNC1(ndev);
	}

	mac_ops->tx_enable(pdata);
	mac_ops->rx_enable(pdata);
	FUNC4(ndev);

	return ret;
}