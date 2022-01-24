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
struct sis900_private {int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; struct mii_phy* first_mii; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_phy {struct mii_phy* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_TOTAL_SIZE ; 
 int /*<<< orphan*/  TX_TOTAL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_phy*) ; 
 struct sis900_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pci_dev)
{
	struct net_device *net_dev = FUNC4(pci_dev);
	struct sis900_private *sis_priv = FUNC2(net_dev);

	FUNC7(net_dev);

	while (sis_priv->first_mii) {
		struct mii_phy *phy = sis_priv->first_mii;

		sis_priv->first_mii = phy->next;
		FUNC1(phy);
	}

	FUNC3(pci_dev, RX_TOTAL_SIZE, sis_priv->rx_ring,
		sis_priv->rx_ring_dma);
	FUNC3(pci_dev, TX_TOTAL_SIZE, sis_priv->tx_ring,
		sis_priv->tx_ring_dma);
	FUNC5(pci_dev, sis_priv->ioaddr);
	FUNC0(net_dev);
	FUNC6(pci_dev);
}