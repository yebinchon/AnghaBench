#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct stmmac_priv {scalar_t__ wol_irq; scalar_t__ lpi_irq; int /*<<< orphan*/  ioaddr; TYPE_2__* tx_queue; TYPE_1__* plat; int /*<<< orphan*/  phylink; int /*<<< orphan*/  eee_ctrl_timer; scalar_t__ eee_enabled; } ;
struct net_device {scalar_t__ irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  txtimer; } ;
struct TYPE_3__ {size_t tx_queues_to_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct net_device*) ; 
 struct stmmac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct stmmac_priv*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct stmmac_priv *priv = FUNC3(dev);
	u32 chan;

	if (priv->eee_enabled)
		FUNC0(&priv->eee_ctrl_timer);

	/* Stop and disconnect the PHY */
	FUNC6(priv->phylink);
	FUNC5(priv->phylink);

	FUNC11(priv);

	FUNC7(priv);

	for (chan = 0; chan < priv->plat->tx_queues_to_use; chan++)
		FUNC0(&priv->tx_queue[chan].txtimer);

	/* Free the IRQ lines */
	FUNC2(dev->irq, dev);
	if (priv->wol_irq != dev->irq)
		FUNC2(priv->wol_irq, dev);
	if (priv->lpi_irq > 0)
		FUNC2(priv->lpi_irq, dev);

	/* Stop TX/RX DMA and clear the descriptors */
	FUNC10(priv);

	/* Release and free the Rx/Tx resources */
	FUNC1(priv);

	/* Disable the MAC Rx/Tx */
	FUNC8(priv, priv->ioaddr, false);

	FUNC4(dev);

	FUNC9(priv);

	return 0;
}