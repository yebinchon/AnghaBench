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
struct octeon_device {TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ pci_channel_io_normal ; 
 struct octeon_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *pdev,
						     pci_channel_state_t state)
{
	struct octeon_device *oct = FUNC2(pdev);

	/* Non-correctable Non-fatal errors */
	if (state == pci_channel_io_normal) {
		FUNC1(&oct->pci_dev->dev, "Non-correctable non-fatal error reported:\n");
		FUNC0(oct->pci_dev);
		return PCI_ERS_RESULT_CAN_RECOVER;
	}

	/* Non-correctable Fatal errors */
	FUNC1(&oct->pci_dev->dev, "Non-correctable FATAL reported by PCI AER driver\n");
	FUNC3(oct);

	return PCI_ERS_RESULT_DISCONNECT;
}