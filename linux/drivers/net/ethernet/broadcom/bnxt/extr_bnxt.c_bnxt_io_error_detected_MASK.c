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
struct bnxt {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static pci_ers_result_t FUNC10(struct pci_dev *pdev,
					       pci_channel_state_t state)
{
	struct net_device *netdev = FUNC7(pdev);
	struct bnxt *bp = FUNC3(netdev);

	FUNC2(netdev, "PCI I/O error detected\n");

	FUNC8();
	FUNC4(netdev);

	FUNC1(bp);

	if (state == pci_channel_io_perm_failure) {
		FUNC9();
		return PCI_ERS_RESULT_DISCONNECT;
	}

	if (FUNC5(netdev))
		FUNC0(netdev);

	FUNC6(pdev);
	FUNC9();

	/* Request a slot slot reset. */
	return PCI_ERS_RESULT_NEED_RESET;
}