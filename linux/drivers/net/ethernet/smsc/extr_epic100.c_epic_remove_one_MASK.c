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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct epic_private {int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_TOTAL_SIZE ; 
 int /*<<< orphan*/  TX_TOTAL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct epic_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct epic_private *ep = FUNC1(dev);

	FUNC3(pdev, TX_TOTAL_SIZE, ep->tx_ring, ep->tx_ring_dma);
	FUNC3(pdev, RX_TOTAL_SIZE, ep->rx_ring, ep->rx_ring_dma);
	FUNC7(dev);
	FUNC5(pdev, ep->ioaddr);
	FUNC6(pdev);
	FUNC0(dev);
	FUNC2(pdev);
	/* pci_power_off(pdev, -1); */
}