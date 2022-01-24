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
struct netdev_private {int /*<<< orphan*/  eeprom_addr; int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_TOTAL_SIZE ; 
 int /*<<< orphan*/  TX_TOTAL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct netdev_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void
FUNC8 (struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4 (pdev);

	if (dev) {
		struct netdev_private *np = FUNC1(dev);

		FUNC7 (dev);
		FUNC3 (pdev, RX_TOTAL_SIZE, np->rx_ring,
				     np->rx_ring_dma);
		FUNC3 (pdev, TX_TOTAL_SIZE, np->tx_ring,
				     np->tx_ring_dma);
#ifdef MEM_MAPPING
		pci_iounmap(pdev, np->ioaddr);
#endif
		FUNC5(pdev, np->eeprom_addr);
		FUNC0 (dev);
		FUNC6 (pdev);
		FUNC2 (pdev);
	}
}