#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct octeon_device *oct)
{
	/* setup PCI stuff first */
	if (FUNC4(oct->pci_dev)) {
		FUNC1(&oct->pci_dev->dev, "pci_enable_device failed\n");
		return 1;
	}

	if (FUNC2(&oct->pci_dev->dev, FUNC0(64))) {
		FUNC1(&oct->pci_dev->dev, "Unexpected DMA device capability\n");
		FUNC3(oct->pci_dev);
		return 1;
	}

	/* Enable PCI DMA Master. */
	FUNC5(oct->pci_dev);

	return 0;
}