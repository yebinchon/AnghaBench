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
struct phy_device {scalar_t__ link; scalar_t__ speed; scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {scalar_t__ speed; scalar_t__ duplex; scalar_t__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct nb8800_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC2(dev);
	struct phy_device *phydev = dev->phydev;
	int change = 0;

	if (phydev->link) {
		if (phydev->speed != priv->speed) {
			priv->speed = phydev->speed;
			change = 1;
		}

		if (phydev->duplex != priv->duplex) {
			priv->duplex = phydev->duplex;
			change = 1;
		}

		if (change)
			FUNC0(dev);

		FUNC1(dev);
	}

	if (phydev->link != priv->link) {
		priv->link = phydev->link;
		change = 1;
	}

	if (change)
		FUNC3(phydev);
}