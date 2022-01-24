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
struct sis190_private {int /*<<< orphan*/ * RxDescRing; int /*<<< orphan*/ * TxDescRing; int /*<<< orphan*/  rx_dma; int /*<<< orphan*/  tx_dma; struct pci_dev* pci_dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_RING_BYTES ; 
 int /*<<< orphan*/  TX_RING_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct sis190_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct sis190_private *tp = FUNC1(dev);
	struct pci_dev *pdev = tp->pci_dev;

	FUNC3(dev);

	FUNC0(pdev->irq, dev);

	FUNC2(pdev, TX_RING_BYTES, tp->TxDescRing, tp->tx_dma);
	FUNC2(pdev, RX_RING_BYTES, tp->RxDescRing, tp->rx_dma);

	tp->TxDescRing = NULL;
	tp->RxDescRing = NULL;

	return 0;
}