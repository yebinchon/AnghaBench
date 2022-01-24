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
struct arc_emac_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arc_emac_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct arc_emac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC3(ndev);

	FUNC5(ndev->phydev);
	FUNC1(priv);
	FUNC6(ndev);
	FUNC4(&priv->napi);

	if (!FUNC0(priv->clk))
		FUNC2(priv->clk);

	return 0;
}