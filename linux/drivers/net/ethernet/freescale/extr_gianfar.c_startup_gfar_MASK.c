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
struct gfar_private {int oldduplex; scalar_t__ oldspeed; scalar_t__ oldlink; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfar_private*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfar_private*) ; 
 struct gfar_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct net_device *ndev)
{
	struct gfar_private *priv = FUNC6(ndev);
	int err;

	FUNC4(priv);

	err = FUNC2(ndev);
	if (err)
		return err;

	FUNC3(priv);

	FUNC10();
	FUNC0(GFAR_DOWN, &priv->state);
	FUNC9();

	/* Start Rx/Tx DMA and enable the interrupts */
	FUNC5(priv);

	/* force link state update after mac reset */
	priv->oldlink = 0;
	priv->oldspeed = 0;
	priv->oldduplex = -1;

	FUNC8(ndev->phydev);

	FUNC1(priv);

	FUNC7(ndev);

	return 0;
}