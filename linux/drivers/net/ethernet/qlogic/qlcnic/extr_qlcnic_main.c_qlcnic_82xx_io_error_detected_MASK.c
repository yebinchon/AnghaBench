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
struct qlcnic_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  fw_work; struct net_device* netdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  __QLCNIC_AER ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ pci_channel_io_normal ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct qlcnic_adapter* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t FUNC11(struct pci_dev *pdev,
						      pci_channel_state_t state)
{
	struct qlcnic_adapter *adapter = FUNC5(pdev);
	struct net_device *netdev = adapter->netdev;

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	if (state == pci_channel_io_normal)
		return PCI_ERS_RESULT_RECOVERED;

	FUNC10(__QLCNIC_AER, &adapter->state);
	FUNC2(netdev);

	FUNC0(&adapter->fw_work);

	if (FUNC3(netdev))
		FUNC8(adapter, netdev);

	FUNC7(adapter);
	FUNC9(adapter);

	FUNC1(__QLCNIC_RESETTING, &adapter->state);

	FUNC6(pdev);
	FUNC4(pdev);

	return PCI_ERS_RESULT_NEED_RESET;
}