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
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  __IXGBEVF_DISABLED ; 
 int /*<<< orphan*/  __IXGBEVF_SERVICE_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t FUNC10(struct pci_dev *pdev,
						  pci_channel_state_t state)
{
	struct net_device *netdev = FUNC5(pdev);
	struct ixgbevf_adapter *adapter = FUNC1(netdev);

	if (!FUNC9(__IXGBEVF_SERVICE_INITED, &adapter->state))
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC6();
	FUNC2(netdev);

	if (FUNC3(netdev))
		FUNC0(adapter);

	if (state == pci_channel_io_perm_failure) {
		FUNC7();
		return PCI_ERS_RESULT_DISCONNECT;
	}

	if (!FUNC8(__IXGBEVF_DISABLED, &adapter->state))
		FUNC4(pdev);
	FUNC7();

	/* Request a slot slot reset. */
	return PCI_ERS_RESULT_NEED_RESET;
}