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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct axienet_local {scalar_t__ tx_irq; scalar_t__ rx_irq; scalar_t__ eth_irq; TYPE_2__* dev; int /*<<< orphan*/  dma_err_tasklet; int /*<<< orphan*/  phylink; TYPE_1__* mii_bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  axienet_dma_err_handler ; 
 int /*<<< orphan*/  axienet_eth_irq ; 
 int /*<<< orphan*/  FUNC1 (struct axienet_local*) ; 
 int FUNC2 (struct axienet_local*) ; 
 int /*<<< orphan*/  axienet_rx_irq ; 
 int /*<<< orphan*/  axienet_tx_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct axienet_local* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct net_device *ndev)
{
	int ret;
	struct axienet_local *lp = FUNC8(ndev);

	FUNC3(&ndev->dev, "axienet_open()\n");

	/* Disable the MDIO interface till Axi Ethernet Reset is completed.
	 * When we do an Axi Ethernet reset, it resets the complete core
	 * including the MDIO. MDIO must be disabled before resetting
	 * and re-enabled afterwards.
	 * Hold MDIO bus lock to avoid MDIO accesses during the reset.
	 */
	FUNC6(&lp->mii_bus->mdio_lock);
	FUNC1(lp);
	FUNC0(ndev);
	ret = FUNC2(lp);
	FUNC7(&lp->mii_bus->mdio_lock);
	if (ret < 0)
		return ret;

	ret = FUNC10(lp->phylink, lp->dev->of_node, 0);
	if (ret) {
		FUNC4(lp->dev, "phylink_of_phy_connect() failed: %d\n", ret);
		return ret;
	}

	FUNC11(lp->phylink);

	/* Enable tasklets for Axi DMA error handling */
	FUNC14(&lp->dma_err_tasklet, axienet_dma_err_handler,
		     (unsigned long) lp);

	/* Enable interrupts for Axi DMA Tx */
	ret = FUNC13(lp->tx_irq, axienet_tx_irq, IRQF_SHARED,
			  ndev->name, ndev);
	if (ret)
		goto err_tx_irq;
	/* Enable interrupts for Axi DMA Rx */
	ret = FUNC13(lp->rx_irq, axienet_rx_irq, IRQF_SHARED,
			  ndev->name, ndev);
	if (ret)
		goto err_rx_irq;
	/* Enable interrupts for Axi Ethernet core (if defined) */
	if (lp->eth_irq > 0) {
		ret = FUNC13(lp->eth_irq, axienet_eth_irq, IRQF_SHARED,
				  ndev->name, ndev);
		if (ret)
			goto err_eth_irq;
	}

	return 0;

err_eth_irq:
	FUNC5(lp->rx_irq, ndev);
err_rx_irq:
	FUNC5(lp->tx_irq, ndev);
err_tx_irq:
	FUNC12(lp->phylink);
	FUNC9(lp->phylink);
	FUNC15(&lp->dma_err_tasklet);
	FUNC4(lp->dev, "request_irq() failed\n");
	return ret;
}