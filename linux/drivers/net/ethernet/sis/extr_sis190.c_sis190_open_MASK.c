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
struct sis190_private {int /*<<< orphan*/  tx_dma; void* TxDescRing; int /*<<< orphan*/  rx_dma; void* RxDescRing; struct pci_dev* pci_dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RX_RING_BYTES ; 
 int /*<<< orphan*/  TX_RING_BYTES ; 
 struct sis190_private* FUNC0 (struct net_device*) ; 
 void* FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  sis190_irq ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sis190_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct sis190_private*,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct sis190_private *tp = FUNC0(dev);
	struct pci_dev *pdev = tp->pci_dev;
	int rc = -ENOMEM;

	FUNC9(tp, dev);

	/*
	 * Rx and Tx descriptors need 256 bytes alignment.
	 * pci_alloc_consistent() guarantees a stronger alignment.
	 */
	tp->TxDescRing = FUNC1(pdev, TX_RING_BYTES, &tp->tx_dma);
	if (!tp->TxDescRing)
		goto out;

	tp->RxDescRing = FUNC1(pdev, RX_RING_BYTES, &tp->rx_dma);
	if (!tp->RxDescRing)
		goto err_free_tx_0;

	rc = FUNC6(dev);
	if (rc < 0)
		goto err_free_rx_1;

	FUNC7(dev);

	rc = FUNC3(pdev->irq, sis190_irq, IRQF_SHARED, dev->name, dev);
	if (rc < 0)
		goto err_release_timer_2;

	FUNC5(dev);
out:
	return rc;

err_release_timer_2:
	FUNC4(dev);
	FUNC8(tp);
err_free_rx_1:
	FUNC2(pdev, RX_RING_BYTES, tp->RxDescRing, tp->rx_dma);
err_free_tx_0:
	FUNC2(pdev, TX_RING_BYTES, tp->TxDescRing, tp->tx_dma);
	goto out;
}