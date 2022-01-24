#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_descs; int /*<<< orphan*/  descs; } ;
struct ns83820 {TYPE_2__* pci_dev; TYPE_1__ rx_info; int /*<<< orphan*/  tx_phy_descs; int /*<<< orphan*/  tx_descs; int /*<<< orphan*/  base; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int DESC_SIZE ; 
 int NR_RX_DESC ; 
 int NR_TX_DESC ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ns83820*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pci_dev)
{
	struct net_device *ndev = FUNC7(pci_dev);
	struct ns83820 *dev = FUNC0(ndev); /* ok even if NULL */

	if (!ndev)			/* paranoia */
		return;

	FUNC4(dev); /* paranoia */

	FUNC8(ndev);
	FUNC1(dev->pci_dev->irq, ndev);
	FUNC3(dev->base);
	FUNC6(dev->pci_dev, 4 * DESC_SIZE * NR_TX_DESC,
			dev->tx_descs, dev->tx_phy_descs);
	FUNC6(dev->pci_dev, 4 * DESC_SIZE * NR_RX_DESC,
			dev->rx_info.descs, dev->rx_info.phy_descs);
	FUNC5(dev->pci_dev);
	FUNC2(ndev);
}