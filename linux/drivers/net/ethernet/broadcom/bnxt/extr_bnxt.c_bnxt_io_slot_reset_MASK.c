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
struct bnxt {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ pci_ers_result_t ;

/* Variables and functions */
 scalar_t__ PCI_ERS_RESULT_DISCONNECT ; 
 scalar_t__ PCI_ERS_RESULT_RECOVERED ; 
 int FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct bnxt* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static pci_ers_result_t FUNC13(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC9(pdev);
	struct bnxt *bp = FUNC6(netdev);
	int err = 0;
	pci_ers_result_t result = PCI_ERS_RESULT_DISCONNECT;

	FUNC5(bp->dev, "PCI Slot Reset\n");

	FUNC11();

	if (FUNC8(pdev)) {
		FUNC4(&pdev->dev,
			"Cannot re-enable PCI device after reset.\n");
	} else {
		FUNC10(pdev);

		err = FUNC0(bp);
		if (!err && FUNC7(netdev))
			err = FUNC1(netdev);

		if (!err) {
			result = PCI_ERS_RESULT_RECOVERED;
			FUNC2(bp);
		}
	}

	if (result != PCI_ERS_RESULT_RECOVERED && FUNC7(netdev))
		FUNC3(netdev);

	FUNC12();

	return PCI_ERS_RESULT_RECOVERED;
}