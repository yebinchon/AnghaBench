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
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  fec; int /*<<< orphan*/  tx_dmatsk; int /*<<< orphan*/  rx_dmatsk; int /*<<< orphan*/ * phy_node; } ;
struct mpc52xx_fec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mpc52xx_fec_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int
FUNC10(struct platform_device *op)
{
	struct net_device *ndev;
	struct mpc52xx_fec_priv *priv;

	ndev = FUNC7(op);
	priv = FUNC5(ndev);

	FUNC9(ndev);

	FUNC6(priv->phy_node);
	priv->phy_node = NULL;

	FUNC4(ndev->irq);

	FUNC0(priv->rx_dmatsk);
	FUNC1(priv->tx_dmatsk);

	FUNC3(priv->fec);

	FUNC8(ndev->base_addr, sizeof(struct mpc52xx_fec));

	FUNC2(ndev);

	return 0;
}