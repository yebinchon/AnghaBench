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
struct pci_endpoint_test {struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;

/* Variables and functions */
 int IRQ_TYPE_LEGACY ; 
 int IRQ_TYPE_MSIX ; 
 int IRQ_TYPE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int irq_type ; 
 int /*<<< orphan*/  FUNC1 (struct pci_endpoint_test*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_endpoint_test*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_endpoint_test*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_endpoint_test*) ; 

__attribute__((used)) static bool FUNC5(struct pci_endpoint_test *test,
				      int req_irq_type)
{
	struct pci_dev *pdev = test->pdev;
	struct device *dev = &pdev->dev;

	if (req_irq_type < IRQ_TYPE_LEGACY || req_irq_type > IRQ_TYPE_MSIX) {
		FUNC0(dev, "Invalid IRQ type option\n");
		return false;
	}

	if (irq_type == req_irq_type)
		return true;

	FUNC3(test);
	FUNC2(test);

	if (!FUNC1(test, req_irq_type))
		goto err;

	if (!FUNC4(test))
		goto err;

	irq_type = req_irq_type;
	return true;

err:
	FUNC2(test);
	irq_type = IRQ_TYPE_UNDEFINED;
	return false;
}