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
struct xgene_mac_ops {int /*<<< orphan*/  (* tx_disable ) (struct xgene_enet_pdata*) ;int /*<<< orphan*/  (* rx_disable ) (struct xgene_enet_pdata*) ;int /*<<< orphan*/  (* tx_enable ) (struct xgene_enet_pdata*) ;int /*<<< orphan*/  (* rx_enable ) (struct xgene_enet_pdata*) ;int /*<<< orphan*/  (* set_speed ) (struct xgene_enet_pdata*) ;} ;
struct xgene_enet_pdata {scalar_t__ phy_speed; struct xgene_mac_ops* mac_ops; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 scalar_t__ SPEED_UNKNOWN ; 
 struct xgene_enet_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev)
{
	struct xgene_enet_pdata *pdata = FUNC0(ndev);
	const struct xgene_mac_ops *mac_ops = pdata->mac_ops;
	struct phy_device *phydev = ndev->phydev;

	if (phydev->link) {
		if (pdata->phy_speed != phydev->speed) {
			pdata->phy_speed = phydev->speed;
			mac_ops->set_speed(pdata);
			mac_ops->rx_enable(pdata);
			mac_ops->tx_enable(pdata);
			FUNC1(phydev);
		}

		FUNC7(ndev);
	} else {
		mac_ops->rx_disable(pdata);
		mac_ops->tx_disable(pdata);
		pdata->phy_speed = SPEED_UNKNOWN;
		FUNC1(phydev);
	}
}