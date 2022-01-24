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
struct tg3 {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ pci_ers_result_t ;

/* Variables and functions */
 scalar_t__ PCI_ERS_RESULT_DISCONNECT ; 
 scalar_t__ PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct tg3* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct tg3*) ; 
 int FUNC12 (struct tg3*) ; 

__attribute__((used)) static pci_ers_result_t FUNC13(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct tg3 *tp = FUNC2(netdev);
	pci_ers_result_t rc = PCI_ERS_RESULT_DISCONNECT;
	int err;

	FUNC9();

	if (FUNC4(pdev)) {
		FUNC1(&pdev->dev,
			"Cannot re-enable PCI device after reset.\n");
		goto done;
	}

	FUNC8(pdev);
	FUNC6(pdev);
	FUNC7(pdev);

	if (!netdev || !FUNC3(netdev)) {
		rc = PCI_ERS_RESULT_RECOVERED;
		goto done;
	}

	err = FUNC12(tp);
	if (err)
		goto done;

	rc = PCI_ERS_RESULT_RECOVERED;

done:
	if (rc != PCI_ERS_RESULT_RECOVERED && netdev && FUNC3(netdev)) {
		FUNC11(tp);
		FUNC0(netdev);
	}
	FUNC10();

	return rc;
}