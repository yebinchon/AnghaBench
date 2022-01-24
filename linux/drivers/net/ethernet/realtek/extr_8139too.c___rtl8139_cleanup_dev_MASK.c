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
struct rtl8139_private {scalar_t__ mmio_addr; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct rtl8139_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC5 (struct net_device *dev)
{
	struct rtl8139_private *tp = FUNC2(dev);
	struct pci_dev *pdev;

	FUNC0 (dev != NULL);
	FUNC0 (tp->pci_dev != NULL);
	pdev = tp->pci_dev;

	if (tp->mmio_addr)
		FUNC3 (pdev, tp->mmio_addr);

	/* it's ok to call this even if we have no regions to free */
	FUNC4 (pdev);

	FUNC1(dev);
}