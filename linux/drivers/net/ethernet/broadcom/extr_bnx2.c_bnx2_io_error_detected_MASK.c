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
struct bnx2 {int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MSG_CODE_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bnx2* FUNC3 (struct net_device*) ; 
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
	struct net_device *dev = FUNC7(pdev);
	struct bnx2 *bp = FUNC3(dev);

	FUNC8();
	FUNC4(dev);

	if (state == pci_channel_io_perm_failure) {
		FUNC9();
		return PCI_ERS_RESULT_DISCONNECT;
	}

	if (FUNC5(dev)) {
		FUNC0(bp, true);
		FUNC2(&bp->timer);
		FUNC1(bp, BNX2_DRV_MSG_CODE_RESET);
	}

	FUNC6(pdev);
	FUNC9();

	/* Request a slot slot reset. */
	return PCI_ERS_RESULT_NEED_RESET;
}