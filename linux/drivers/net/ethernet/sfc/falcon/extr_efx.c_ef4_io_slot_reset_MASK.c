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
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 struct ef4_nic* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC3(struct pci_dev *pdev)
{
	struct ef4_nic *efx = FUNC2(pdev);
	pci_ers_result_t status = PCI_ERS_RESULT_RECOVERED;

	if (FUNC1(pdev)) {
		FUNC0(efx, hw, efx->net_dev,
			  "Cannot re-enable PCI device after reset.\n");
		status =  PCI_ERS_RESULT_DISCONNECT;
	}

	return status;
}