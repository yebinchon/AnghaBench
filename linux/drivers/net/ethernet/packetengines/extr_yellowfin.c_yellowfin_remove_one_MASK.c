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
struct yellowfin_private {int /*<<< orphan*/  base; int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_status_dma; int /*<<< orphan*/  tx_status; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RX_TOTAL_SIZE ; 
 int /*<<< orphan*/  STATUS_TOTAL_SIZE ; 
 int /*<<< orphan*/  TX_TOTAL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct yellowfin_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct yellowfin_private *np;

	FUNC0(!dev);
	np = FUNC2(dev);

        FUNC3(pdev, STATUS_TOTAL_SIZE, np->tx_status,
		np->tx_status_dma);
	FUNC3(pdev, RX_TOTAL_SIZE, np->rx_ring, np->rx_ring_dma);
	FUNC3(pdev, TX_TOTAL_SIZE, np->tx_ring, np->tx_ring_dma);
	FUNC7 (dev);

	FUNC5(pdev, np->base);

	FUNC6 (pdev);

	FUNC1 (dev);
}