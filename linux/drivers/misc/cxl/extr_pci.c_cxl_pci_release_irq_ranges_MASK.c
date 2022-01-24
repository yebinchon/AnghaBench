#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct cxl_irq_ranges {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct cxl {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_irq_ranges*,struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct cxl_irq_ranges *irqs,
				struct cxl *adapter)
{
	struct pci_dev *dev = FUNC1(adapter->dev.parent);

	FUNC0(irqs, dev);
}