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
struct pci_dev {scalar_t__ devfn; } ;
struct be_adapter {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_ERROR_EEH ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct be_adapter* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static pci_ers_result_t FUNC9(struct pci_dev *pdev,
					    pci_channel_state_t state)
{
	struct be_adapter *adapter = FUNC7(pdev);

	FUNC5(&adapter->pdev->dev, "EEH error detected\n");

	FUNC3(adapter);

	if (!FUNC1(adapter, BE_ERROR_EEH)) {
		FUNC4(adapter, BE_ERROR_EEH);

		FUNC0(adapter);

		FUNC2(adapter);
	}

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC6(pdev);

	/* The error could cause the FW to trigger a flash debug dump.
	 * Resetting the card while flash dump is in progress
	 * can cause it not to recover; wait for it to finish.
	 * Wait only for first function as it is needed only once per
	 * adapter.
	 */
	if (pdev->devfn == 0)
		FUNC8(30);

	return PCI_ERS_RESULT_NEED_RESET;
}