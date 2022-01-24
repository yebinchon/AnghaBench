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
struct phy_device {scalar_t__ speed; int /*<<< orphan*/  duplex; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct emac_priv {scalar_t__ speed; int link; int /*<<< orphan*/  lock; int /*<<< orphan*/  duplex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_priv*) ; 
 struct emac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct emac_priv *priv = FUNC1(ndev);
	struct phy_device *phydev = ndev->phydev;
	unsigned long flags;
	int new_state = 0;

	FUNC3(&priv->lock, flags);

	if (phydev->link) {
		/* check the mode of operation - full/half duplex */
		if (phydev->duplex != priv->duplex) {
			new_state = 1;
			priv->duplex = phydev->duplex;
		}
		if (phydev->speed != priv->speed) {
			new_state = 1;
			priv->speed = phydev->speed;
		}
		if (!priv->link) {
			new_state = 1;
			priv->link = 1;
		}

	} else if (priv->link) {
		new_state = 1;
		priv->link = 0;
		priv->speed = 0;
		priv->duplex = ~0;
	}
	if (new_state) {
		FUNC0(priv);
		FUNC2(ndev->phydev);
	}

	FUNC4(&priv->lock, flags);
}