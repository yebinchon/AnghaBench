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
struct r6040_private {int /*<<< orphan*/  rx_ring_dma; void* rx_ring; int /*<<< orphan*/  pdev; int /*<<< orphan*/  tx_ring_dma; void* tx_ring; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RX_DESC_SIZE ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r6040_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r6040_interrupt ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct r6040_private *lp = FUNC2(dev);
	int ret;

	/* Request IRQ and Register interrupt handler */
	ret = FUNC8(dev->irq, r6040_interrupt,
		IRQF_SHARED, dev->name, dev);
	if (ret)
		goto out;

	/* Set MAC address */
	FUNC6(dev);

	/* Allocate Descriptor memory */
	lp->rx_ring =
		FUNC4(lp->pdev, RX_DESC_SIZE, &lp->rx_ring_dma);
	if (!lp->rx_ring) {
		ret = -ENOMEM;
		goto err_free_irq;
	}

	lp->tx_ring =
		FUNC4(lp->pdev, TX_DESC_SIZE, &lp->tx_ring_dma);
	if (!lp->tx_ring) {
		ret = -ENOMEM;
		goto err_free_rx_ring;
	}

	ret = FUNC7(dev);
	if (ret)
		goto err_free_tx_ring;

	FUNC1(&lp->napi);
	FUNC3(dev);

	return 0;

err_free_tx_ring:
	FUNC5(lp->pdev, TX_DESC_SIZE, lp->tx_ring,
			lp->tx_ring_dma);
err_free_rx_ring:
	FUNC5(lp->pdev, RX_DESC_SIZE, lp->rx_ring,
			lp->rx_ring_dma);
err_free_irq:
	FUNC0(dev->irq, dev);
out:
	return ret;
}