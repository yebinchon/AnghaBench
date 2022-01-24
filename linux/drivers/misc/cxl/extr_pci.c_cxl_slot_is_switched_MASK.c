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
struct device_node {int dummy; } ;

/* Variables and functions */
 int CXL_MAX_PCIEX_PARENT ; 
 int ENODEV ; 
 struct device_node* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct pci_dev *dev)
{
	struct device_node *np;
	int depth = 0;

	if (!(np = FUNC4(dev))) {
		FUNC5("cxl: np = NULL\n");
		return -ENODEV;
	}
	FUNC1(np);
	while (np) {
		np = FUNC0(np);
		if (!FUNC2(np, "pciex"))
			break;
		depth++;
	}
	FUNC3(np);
	return (depth > CXL_MAX_PCIEX_PARENT);
}