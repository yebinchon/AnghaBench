#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {TYPE_1__* pci_dev; int /*<<< orphan*/  pf_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_INTX_DISABLE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct octeon_device *oct)
{
	int rc;

	FUNC5(oct->pci_dev);

	FUNC2(oct->pci_dev);

	/* Quiesce the device completely */
	FUNC6(oct->pci_dev, PCI_COMMAND,
			      PCI_COMMAND_INTX_DISABLE);

	rc = FUNC0(oct->pci_dev);

	if (rc != 0)
		FUNC1(&oct->pci_dev->dev, "Error %d resetting PCI function %d\n",
			rc, oct->pf_num);

	FUNC3(oct->pci_dev);

	FUNC4(oct->pci_dev);
}