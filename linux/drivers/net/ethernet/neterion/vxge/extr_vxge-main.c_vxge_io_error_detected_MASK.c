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
struct __vxge_hw_device {struct net_device* ndev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct __vxge_hw_device* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC5(struct pci_dev *pdev,
						pci_channel_state_t state)
{
	struct __vxge_hw_device *hldev = FUNC4(pdev);
	struct net_device *netdev = hldev->ndev;

	FUNC1(netdev);

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	if (FUNC2(netdev)) {
		/* Bring down the card, while avoiding PCI I/O */
		FUNC0(netdev, 0);
	}

	FUNC3(pdev);

	return PCI_ERS_RESULT_NEED_RESET;
}