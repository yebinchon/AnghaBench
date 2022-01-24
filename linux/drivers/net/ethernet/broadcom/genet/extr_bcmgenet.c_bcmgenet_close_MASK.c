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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct bcmgenet_priv {int /*<<< orphan*/  clk; scalar_t__ internal_phy; int /*<<< orphan*/  irq1; int /*<<< orphan*/  irq0; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENET_POWER_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  ifdown ; 
 struct bcmgenet_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcmgenet_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC4(dev);
	int ret = 0;

	FUNC5(priv, ifdown, dev, "bcmgenet_close\n");

	FUNC0(dev);

	/* Really kill the PHY state machine and disconnect from it */
	FUNC6(dev->phydev);

	FUNC3(priv->irq0, priv);
	FUNC3(priv->irq1, priv);

	if (priv->internal_phy)
		ret = FUNC1(priv, GENET_POWER_PASSIVE);

	FUNC2(priv->clk);

	return ret;
}