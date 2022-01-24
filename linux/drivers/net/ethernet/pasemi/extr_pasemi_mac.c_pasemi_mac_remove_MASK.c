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
struct pci_dev {int dummy; } ;
struct pasemi_mac {TYPE_2__* rx; TYPE_1__* tx; int /*<<< orphan*/  iob_pdev; int /*<<< orphan*/  dma_pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct pasemi_mac* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct pasemi_mac *mac;

	if (!netdev)
		return;

	mac = FUNC1(netdev);

	FUNC6(netdev);

	FUNC4(pdev);
	FUNC3(mac->dma_pdev);
	FUNC3(mac->iob_pdev);

	FUNC2(&mac->tx->chan);
	FUNC2(&mac->rx->chan);

	FUNC0(netdev);
}