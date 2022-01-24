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
struct bcmgenet_priv {int old_link; int old_speed; int old_duplex; int old_pause; int /*<<< orphan*/  bcmgenet_irq_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RX_EN ; 
 int /*<<< orphan*/  CMD_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct bcmgenet_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC7(dev);

	FUNC1(priv);
	FUNC8(dev);

	/* Disable MAC receive */
	FUNC10(priv, CMD_RX_EN, false);

	FUNC2(priv);

	/* Disable MAC transmit. TX DMA disabled must be done before this */
	FUNC10(priv, CMD_TX_EN, false);

	FUNC9(dev->phydev);
	FUNC0(priv);
	FUNC4(priv);

	/* Wait for pending work items to complete. Since interrupts are
	 * disabled no new work will be scheduled.
	 */
	FUNC6(&priv->bcmgenet_irq_work);

	priv->old_link = -1;
	priv->old_speed = -1;
	priv->old_duplex = -1;
	priv->old_pause = -1;

	/* tx reclaim */
	FUNC5(dev);
	FUNC3(priv);
}