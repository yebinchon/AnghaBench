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
struct tulip_tx_desc {int dummy; } ;
struct tulip_rx_desc {int dummy; } ;
struct tulip_private {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  mtable; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tulip_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC5 (pdev);
	struct tulip_private *tp;

	if (!dev)
		return;

	tp = FUNC2(dev);
	FUNC8(dev);
	FUNC4 (pdev,
			     sizeof (struct tulip_rx_desc) * RX_RING_SIZE +
			     sizeof (struct tulip_tx_desc) * TX_RING_SIZE,
			     tp->rx_ring, tp->rx_ring_dma);
	FUNC1 (tp->mtable);
	FUNC6(pdev, tp->base_addr);
	FUNC0 (dev);
	FUNC7 (pdev);
	FUNC3(pdev);

	/* pci_power_off (pdev, -1); */
}