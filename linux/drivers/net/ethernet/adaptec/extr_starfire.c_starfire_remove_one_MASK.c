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
struct netdev_private {int /*<<< orphan*/  base; int /*<<< orphan*/  queue_mem_dma; scalar_t__ queue_mem; int /*<<< orphan*/  queue_mem_size; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct netdev_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC6(pdev);
	struct netdev_private *np = FUNC3(dev);

	FUNC0(!dev);

	FUNC9(dev);

	if (np->queue_mem)
		FUNC5(pdev, np->queue_mem_size, np->queue_mem, np->queue_mem_dma);


	/* XXX: add wakeup code -- requires firmware for MagicPacket */
	FUNC8(pdev, PCI_D3hot);	/* go to sleep in D3 mode */
	FUNC4(pdev);

	FUNC2(np->base);
	FUNC7(pdev);

	FUNC1(dev);			/* Will also free np!! */
}