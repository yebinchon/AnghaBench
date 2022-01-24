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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; } ;
typedef  scalar_t__ pci_ers_result_t ;

/* Variables and functions */
 int BNX2_FLAG_AER_ENABLED ; 
 scalar_t__ PCI_ERS_RESULT_DISCONNECT ; 
 scalar_t__ PCI_ERS_RESULT_RECOVERED ; 
 int FUNC0 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct bnx2* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static pci_ers_result_t FUNC13(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC7(pdev);
	struct bnx2 *bp = FUNC4(dev);
	pci_ers_result_t result = PCI_ERS_RESULT_DISCONNECT;
	int err = 0;

	FUNC11();
	if (FUNC6(pdev)) {
		FUNC3(&pdev->dev,
			"Cannot re-enable PCI device after reset\n");
	} else {
		FUNC10(pdev);
		FUNC8(pdev);
		FUNC9(pdev);

		if (FUNC5(dev))
			err = FUNC0(bp, 1);

		if (!err)
			result = PCI_ERS_RESULT_RECOVERED;
	}

	if (result != PCI_ERS_RESULT_RECOVERED && FUNC5(dev)) {
		FUNC1(bp);
		FUNC2(dev);
	}
	FUNC12();

	if (!(bp->flags & BNX2_FLAG_AER_ENABLED))
		return result;

	return result;
}