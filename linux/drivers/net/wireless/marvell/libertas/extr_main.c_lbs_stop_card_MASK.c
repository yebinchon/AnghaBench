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
struct net_device {scalar_t__ reg_state; } ;
struct lbs_private {struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

void FUNC5(struct lbs_private *priv)
{
	struct net_device *dev;

	if (!priv)
		return;
	dev = priv->dev;

	/* If the netdev isn't registered, it means that lbs_start_card() was
	 * never called so we have nothing to do here. */
	if (dev->reg_state != NETREG_REGISTERED)
		return;

	FUNC3(dev);
	FUNC2(dev);

	FUNC0(priv);
	FUNC1(priv);
	FUNC4(dev);
}