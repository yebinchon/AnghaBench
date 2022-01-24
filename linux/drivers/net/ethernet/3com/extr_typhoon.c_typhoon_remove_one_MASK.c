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
struct typhoon_shared {int dummy; } ;
struct typhoon {int /*<<< orphan*/  shared_dma; int /*<<< orphan*/  shared; int /*<<< orphan*/  ioaddr; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NoWait ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct typhoon* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static void
FUNC12(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC5(pdev);
	struct typhoon *tp = FUNC1(dev);

	FUNC11(dev);
	FUNC9(pdev, PCI_D0);
	FUNC8(pdev);
	FUNC10(tp->ioaddr, NoWait);
	FUNC6(pdev, tp->ioaddr);
	FUNC4(pdev, sizeof(struct typhoon_shared),
			    tp->shared, tp->shared_dma);
	FUNC7(pdev);
	FUNC2(pdev);
	FUNC3(pdev);
	FUNC0(dev);
}