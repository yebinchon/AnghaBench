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
struct net_device {int dummy; } ;
struct ave_private {int nrsts; int nclks; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * rst; int /*<<< orphan*/  mdio; int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ave_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct ave_private *priv = FUNC2(ndev);
	int i;

	FUNC3(priv->phydev);
	FUNC1(priv->mdio);

	/* disable clk because of hw access after ndo_stop */
	for (i = 0; i < priv->nrsts; i++)
		FUNC4(priv->rst[i]);
	for (i = 0; i < priv->nclks; i++)
		FUNC0(priv->clk[i]);
}