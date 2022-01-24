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
struct netxen_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct netxen_adapter*) ; 
 scalar_t__ FUNC1 (struct netxen_adapter*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct netxen_adapter* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *pdev,
						pci_channel_state_t state)
{
	struct netxen_adapter *adapter = FUNC3(pdev);

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	if (FUNC1(adapter))
		return PCI_ERS_RESULT_RECOVERED;

	FUNC0(adapter);

	FUNC2(pdev);

	return PCI_ERS_RESULT_NEED_RESET;
}