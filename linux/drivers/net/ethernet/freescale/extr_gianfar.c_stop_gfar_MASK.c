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
struct gfar_private {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfar_private*) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct net_device *dev)
{
	struct gfar_private *priv = FUNC3(dev);

	FUNC4(dev);

	FUNC8();
	FUNC6(GFAR_DOWN, &priv->state);
	FUNC7();

	FUNC0(priv);

	/* disable ints and gracefully shut down Rx/Tx DMA */
	FUNC2(priv);

	FUNC5(dev->phydev);

	FUNC1(priv);
}