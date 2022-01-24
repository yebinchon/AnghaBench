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
typedef  int /*<<< orphan*/  u32 ;
struct cx23885_dev {int /*<<< orphan*/  pci_irqmask_lock; int /*<<< orphan*/  pci_irqmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_INT_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct cx23885_dev *dev, u32 mask)
{
	unsigned long flags;
	FUNC1(&dev->pci_irqmask_lock, flags);

	dev->pci_irqmask |= mask;
	FUNC0(PCI_INT_MSK, mask);

	FUNC2(&dev->pci_irqmask_lock, flags);
}