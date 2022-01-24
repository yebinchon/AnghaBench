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
struct e1000_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*,int) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev,
						pci_channel_state_t state)
{
	struct net_device *netdev = FUNC5(pdev);
	struct e1000_adapter *adapter = FUNC1(netdev);

	FUNC2(netdev);

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	if (FUNC3(netdev))
		FUNC0(adapter, true);
	FUNC4(pdev);

	/* Request a slot slot reset. */
	return PCI_ERS_RESULT_NEED_RESET;
}