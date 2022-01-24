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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ice_pf {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  GLGEN_RTRIG ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 struct ice_pf* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pci_ers_result_t FUNC10(struct pci_dev *pdev)
{
	struct ice_pf *pf = FUNC4(pdev);
	pci_ers_result_t result;
	int err;
	u32 reg;

	err = FUNC3(pdev);
	if (err) {
		FUNC1(&pdev->dev,
			"Cannot re-enable PCI device after reset, error %d\n",
			err);
		result = PCI_ERS_RESULT_DISCONNECT;
	} else {
		FUNC7(pdev);
		FUNC5(pdev);
		FUNC6(pdev);
		FUNC8(pdev, false);

		/* Check for life */
		reg = FUNC9(&pf->hw, GLGEN_RTRIG);
		if (!reg)
			result = PCI_ERS_RESULT_RECOVERED;
		else
			result = PCI_ERS_RESULT_DISCONNECT;
	}

	err = FUNC2(pdev);
	if (err)
		FUNC0(&pdev->dev,
			"pci_cleanup_aer_uncorrect_error_status failed, error %d\n",
			err);
		/* non-fatal, continue */

	return result;
}