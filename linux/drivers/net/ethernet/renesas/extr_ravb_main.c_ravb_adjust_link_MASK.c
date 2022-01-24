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
struct ravb_private {scalar_t__ speed; int /*<<< orphan*/  lock; scalar_t__ no_avb_link; scalar_t__ link; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECMR ; 
 int /*<<< orphan*/  ECMR_TXF ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct ravb_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC0(ndev);
	struct phy_device *phydev = ndev->phydev;
	bool new_state = false;
	unsigned long flags;

	FUNC7(&priv->lock, flags);

	/* Disable TX and RX right over here, if E-MAC change is ignored */
	if (priv->no_avb_link)
		FUNC4(ndev);

	if (phydev->link) {
		if (phydev->speed != priv->speed) {
			new_state = true;
			priv->speed = phydev->speed;
			FUNC6(ndev);
		}
		if (!priv->link) {
			FUNC3(ndev, ECMR, ECMR_TXF, 0);
			new_state = true;
			priv->link = phydev->link;
		}
	} else if (priv->link) {
		new_state = true;
		priv->link = 0;
		priv->speed = 0;
	}

	/* Enable TX and RX right over here, if E-MAC change is ignored */
	if (priv->no_avb_link && phydev->link)
		FUNC5(ndev);

	FUNC8(&priv->lock, flags);

	if (new_state && FUNC1(priv))
		FUNC2(phydev);
}