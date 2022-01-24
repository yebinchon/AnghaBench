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
struct net_device {TYPE_1__* phydev; } ;
struct cpmac_priv {scalar_t__ oldduplex; scalar_t__ oldspeed; int oldlink; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct cpmac_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct cpmac_priv *priv = FUNC1(dev);
	int new_state = 0;

	FUNC5(&priv->lock);
	if (dev->phydev->link) {
		FUNC3(dev);
		if (dev->phydev->duplex != priv->oldduplex) {
			new_state = 1;
			priv->oldduplex = dev->phydev->duplex;
		}

		if (dev->phydev->speed != priv->oldspeed) {
			new_state = 1;
			priv->oldspeed = dev->phydev->speed;
		}

		if (!priv->oldlink) {
			new_state = 1;
			priv->oldlink = 1;
		}
	} else if (priv->oldlink) {
		new_state = 1;
		priv->oldlink = 0;
		priv->oldspeed = 0;
		priv->oldduplex = -1;
	}

	if (new_state && FUNC2(priv) && FUNC0())
		FUNC4(dev->phydev);

	FUNC6(&priv->lock);
}