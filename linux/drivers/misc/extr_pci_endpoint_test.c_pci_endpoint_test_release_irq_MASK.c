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
struct pci_endpoint_test {int num_irqs; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,struct pci_endpoint_test*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC2(struct pci_endpoint_test *test)
{
	int i;
	struct pci_dev *pdev = test->pdev;
	struct device *dev = &pdev->dev;

	for (i = 0; i < test->num_irqs; i++)
		FUNC0(dev, FUNC1(pdev, i), test);

	test->num_irqs = 0;
}