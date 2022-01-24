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
struct cxl {TYPE_1__* native; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p1_mmio; void* p2_mmio; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cxl *adapter, struct pci_dev *dev)
{
	if (FUNC7(dev, 2, "priv 2 regs"))
		goto err1;
	if (FUNC7(dev, 0, "priv 1 regs"))
		goto err2;

	FUNC8("cxl_map_adapter_regs: p1: %#016llx %#llx, p2: %#016llx %#llx",
			FUNC2(dev), FUNC3(dev), FUNC4(dev), FUNC5(dev));

	if (!(adapter->native->p1_mmio = FUNC0(FUNC2(dev), FUNC3(dev))))
		goto err3;

	if (!(adapter->native->p2_mmio = FUNC0(FUNC4(dev), FUNC5(dev))))
		goto err4;

	return 0;

err4:
	FUNC1(adapter->native->p1_mmio);
	adapter->native->p1_mmio = NULL;
err3:
	FUNC6(dev, 0);
err2:
	FUNC6(dev, 2);
err1:
	return -ENOMEM;
}