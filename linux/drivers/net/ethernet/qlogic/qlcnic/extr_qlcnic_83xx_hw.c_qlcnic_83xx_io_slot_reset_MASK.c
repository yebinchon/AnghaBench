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
struct pci_dev {int /*<<< orphan*/  error_state; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  __QLCNIC_AER ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int FUNC1 (struct pci_dev*) ; 
 struct qlcnic_adapter* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qlcnic_adapter*) ; 

__attribute__((used)) static pci_ers_result_t FUNC7(struct pci_dev *pdev)
{
	struct qlcnic_adapter *adapter = FUNC2(pdev);
	int err = 0;

	pdev->error_state = pci_channel_io_normal;
	err = FUNC1(pdev);
	if (err)
		goto disconnect;

	FUNC5(pdev, PCI_D0);
	FUNC4(pdev);
	FUNC3(pdev);

	err = FUNC6(adapter);
	if (err == 0)
		return PCI_ERS_RESULT_RECOVERED;
disconnect:
	FUNC0(__QLCNIC_AER, &adapter->state);
	FUNC0(__QLCNIC_RESETTING, &adapter->state);
	return PCI_ERS_RESULT_DISCONNECT;
}