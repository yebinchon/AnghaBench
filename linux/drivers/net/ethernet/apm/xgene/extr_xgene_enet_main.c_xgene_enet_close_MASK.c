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
struct xgene_mac_ops {int /*<<< orphan*/  (* rx_disable ) (struct xgene_enet_pdata*) ;int /*<<< orphan*/  (* tx_disable ) (struct xgene_enet_pdata*) ;} ;
struct xgene_enet_pdata {int rxq_cnt; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  link_work; struct xgene_mac_ops* mac_ops; } ;
struct net_device {scalar_t__ phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xgene_enet_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct xgene_enet_pdata *pdata = FUNC1(ndev);
	const struct xgene_mac_ops *mac_ops = pdata->mac_ops;
	int i;

	FUNC2(ndev);
	mac_ops->tx_disable(pdata);
	mac_ops->rx_disable(pdata);

	if (ndev->phydev)
		FUNC3(ndev->phydev);
	else
		FUNC0(&pdata->link_work);

	FUNC6(ndev);
	FUNC7(pdata);
	for (i = 0; i < pdata->rxq_cnt; i++)
		FUNC8(pdata->rx_ring[i], -1);

	return 0;
}