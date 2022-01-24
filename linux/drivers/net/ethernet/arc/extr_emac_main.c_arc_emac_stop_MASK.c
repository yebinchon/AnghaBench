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
struct arc_emac_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EN_MASK ; 
 int ERR_MASK ; 
 int RXINT_MASK ; 
 int /*<<< orphan*/  R_CTRL ; 
 int /*<<< orphan*/  R_ENABLE ; 
 int TXINT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct arc_emac_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC4(ndev);

	FUNC3(&priv->napi);
	FUNC5(ndev);

	FUNC6(ndev->phydev);

	/* Disable interrupts */
	FUNC2(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);

	/* Disable EMAC */
	FUNC2(priv, R_CTRL, EN_MASK);

	/* Return the sk_buff to system */
	FUNC1(ndev);
	FUNC0(ndev);

	return 0;
}