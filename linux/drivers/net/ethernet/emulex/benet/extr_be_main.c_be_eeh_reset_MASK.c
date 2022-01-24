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
struct be_adapter {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_CLEAR_ALL ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct pci_dev*) ; 
 struct be_adapter* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC7(struct pci_dev *pdev)
{
	struct be_adapter *adapter = FUNC4(pdev);
	int status;

	FUNC2(&adapter->pdev->dev, "EEH reset\n");

	status = FUNC3(pdev);
	if (status)
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC6(pdev);
	FUNC5(pdev);

	/* Check if card is ok and fw is ready */
	FUNC2(&adapter->pdev->dev,
		 "Waiting for FW to be ready after EEH reset\n");
	status = FUNC1(adapter);
	if (status)
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC0(adapter, BE_CLEAR_ALL);
	return PCI_ERS_RESULT_RECOVERED;
}