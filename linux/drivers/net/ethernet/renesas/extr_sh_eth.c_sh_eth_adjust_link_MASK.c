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
struct sh_eth_private {int duplex; scalar_t__ speed; int /*<<< orphan*/  lock; scalar_t__ no_ether_link; TYPE_1__* cd; scalar_t__ link; } ;
struct phy_device {int duplex; scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct TYPE_2__ {scalar_t__ no_psr; int /*<<< orphan*/  (* set_rate ) (struct net_device*) ;int /*<<< orphan*/  (* set_duplex ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ECMR ; 
 int /*<<< orphan*/  ECMR_TXF ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct sh_eth_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	struct phy_device *phydev = ndev->phydev;
	unsigned long flags;
	int new_state = 0;

	FUNC6(&mdp->lock, flags);

	/* Disable TX and RX right over here, if E-MAC change is ignored */
	if (mdp->cd->no_psr || mdp->no_ether_link)
		FUNC4(ndev);

	if (phydev->link) {
		if (phydev->duplex != mdp->duplex) {
			new_state = 1;
			mdp->duplex = phydev->duplex;
			if (mdp->cd->set_duplex)
				mdp->cd->set_duplex(ndev);
		}

		if (phydev->speed != mdp->speed) {
			new_state = 1;
			mdp->speed = phydev->speed;
			if (mdp->cd->set_rate)
				mdp->cd->set_rate(ndev);
		}
		if (!mdp->link) {
			FUNC3(ndev, ECMR, ECMR_TXF, 0);
			new_state = 1;
			mdp->link = phydev->link;
		}
	} else if (mdp->link) {
		new_state = 1;
		mdp->link = 0;
		mdp->speed = 0;
		mdp->duplex = -1;
	}

	/* Enable TX and RX right over here, if E-MAC change is ignored */
	if ((mdp->cd->no_psr || mdp->no_ether_link) && phydev->link)
		FUNC5(ndev);

	FUNC7(&mdp->lock, flags);

	if (new_state && FUNC1(mdp))
		FUNC2(phydev);
}