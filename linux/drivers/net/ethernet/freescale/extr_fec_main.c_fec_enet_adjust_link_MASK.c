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
struct phy_device {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct fec_enet_private {scalar_t__ full_duplex; scalar_t__ speed; scalar_t__ link; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*) ; 

__attribute__((used)) static void FUNC11(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC4(ndev);
	struct phy_device *phy_dev = ndev->phydev;
	int status_change = 0;

	/*
	 * If the netdev is down, or is going down, we're not interested
	 * in link state events, so just mark our idea of the link as down
	 * and ignore the event.
	 */
	if (!FUNC6(ndev) || !FUNC5(ndev)) {
		fep->link = 0;
	} else if (phy_dev->link) {
		if (!fep->link) {
			fep->link = phy_dev->link;
			status_change = 1;
		}

		if (fep->full_duplex != phy_dev->duplex) {
			fep->full_duplex = phy_dev->duplex;
			status_change = 1;
		}

		if (phy_dev->speed != fep->speed) {
			fep->speed = phy_dev->speed;
			status_change = 1;
		}

		/* if any of the above changed restart the FEC */
		if (status_change) {
			FUNC2(&fep->napi);
			FUNC7(ndev);
			FUNC0(ndev);
			FUNC9(ndev);
			FUNC8(ndev);
			FUNC3(&fep->napi);
		}
	} else {
		if (fep->link) {
			FUNC2(&fep->napi);
			FUNC7(ndev);
			FUNC1(ndev);
			FUNC8(ndev);
			FUNC3(&fep->napi);
			fep->link = phy_dev->link;
			status_change = 1;
		}
	}

	if (status_change)
		FUNC10(phy_dev);
}