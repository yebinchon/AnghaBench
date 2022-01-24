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
struct qlcnic_adapter {int /*<<< orphan*/  state; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  __QLCNIC_AER ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 scalar_t__ pci_channel_io_normal ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct qlcnic_adapter* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t FUNC5(struct pci_dev *pdev,
						      pci_channel_state_t state)
{
	struct qlcnic_adapter *adapter = FUNC1(pdev);

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	if (state == pci_channel_io_normal)
		return PCI_ERS_RESULT_RECOVERED;

	FUNC4(__QLCNIC_AER, &adapter->state);
	FUNC4(__QLCNIC_RESETTING, &adapter->state);

	FUNC3(adapter);

	FUNC2(pdev);
	FUNC0(pdev);

	return PCI_ERS_RESULT_NEED_RESET;
}