#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {scalar_t__ phydev; } ;
struct altera_tse_private {TYPE_1__* dmaops; int /*<<< orphan*/  mac_cfg_lock; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  rxdma_irq_lock; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* uninit_dma ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* reset_dma ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* disable_txirq ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* disable_rxirq ) (struct altera_tse_private*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct altera_tse_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct altera_tse_private*) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC4(dev);
	int ret;
	unsigned long int flags;

	/* Stop the PHY */
	if (dev->phydev)
		FUNC6(dev->phydev);

	FUNC5(dev);
	FUNC2(&priv->napi);

	/* Disable DMA interrupts */
	FUNC9(&priv->rxdma_irq_lock, flags);
	priv->dmaops->disable_rxirq(priv);
	priv->dmaops->disable_txirq(priv);
	FUNC11(&priv->rxdma_irq_lock, flags);

	/* Free the IRQ lines */
	FUNC0(priv->rx_irq, dev);
	FUNC0(priv->tx_irq, dev);

	/* disable and reset the MAC, empties fifo */
	FUNC8(&priv->mac_cfg_lock);
	FUNC8(&priv->tx_lock);

	ret = FUNC7(priv);
	/* Note that reset_mac will fail if the clocks are gated by the PHY
	 * due to the PHY being put into isolation or power down mode.
	 * This is not an error if reset fails due to no clock.
	 */
	if (ret)
		FUNC3(dev, "Cannot reset MAC core (error: %d)\n", ret);
	priv->dmaops->reset_dma(priv);
	FUNC1(dev);

	FUNC10(&priv->tx_lock);
	FUNC10(&priv->mac_cfg_lock);

	priv->dmaops->uninit_dma(priv);

	return 0;
}