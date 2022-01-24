#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  mem_end; void* mem_start; int /*<<< orphan*/  pm_cap; } ;
struct qed_dev {int /*<<< orphan*/  doorbells; int /*<<< orphan*/  db_size; void* db_phys_addr; struct pci_dev* pdev; int /*<<< orphan*/  regview; TYPE_1__ pci_params; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  enable_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,...) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  PCI_CAP_ID_PM ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 scalar_t__ PCI_REVISION_ID_ERROR_VAL ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int) ; 
 void* FUNC15 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct qed_dev*) ; 

__attribute__((used)) static int FUNC19(struct qed_dev *cdev, struct pci_dev *pdev)
{
	u8 rev_id;
	int rc;

	cdev->pdev = pdev;

	rc = FUNC5(pdev);
	if (rc) {
		FUNC0(cdev, "Cannot enable PCI device\n");
		goto err0;
	}

	if (!(FUNC13(pdev, 0) & IORESOURCE_MEM)) {
		FUNC0(cdev, "No memory region found in bar #0\n");
		rc = -EIO;
		goto err1;
	}

	if (FUNC1(cdev) && !(FUNC13(pdev, 2) & IORESOURCE_MEM)) {
		FUNC0(cdev, "No memory region found in bar #2\n");
		rc = -EIO;
		goto err1;
	}

	if (FUNC2(&pdev->enable_cnt) == 1) {
		rc = FUNC11(pdev, "qed");
		if (rc) {
			FUNC0(cdev,
				  "Failed to request PCI memory resources\n");
			goto err1;
		}
		FUNC17(pdev);
		FUNC16(pdev);
	}

	FUNC9(pdev, PCI_REVISION_ID, &rev_id);
	if (rev_id == PCI_REVISION_ID_ERROR_VAL) {
		FUNC0(cdev,
			  "Detected PCI device error [rev_id 0x%x]. Probably due to prior indication. Aborting.\n",
			  rev_id);
		rc = -ENODEV;
		goto err2;
	}
	if (!FUNC8(pdev)) {
		FUNC0(cdev, "The bus is not PCI Express\n");
		rc = -EIO;
		goto err2;
	}

	cdev->pci_params.pm_cap = FUNC6(pdev, PCI_CAP_ID_PM);
	if (FUNC1(cdev) && !cdev->pci_params.pm_cap)
		FUNC0(cdev, "Cannot find power management capability\n");

	rc = FUNC18(cdev);
	if (rc)
		goto err2;

	cdev->pci_params.mem_start = FUNC15(pdev, 0);
	cdev->pci_params.mem_end = FUNC12(pdev, 0);
	cdev->pci_params.irq = pdev->irq;

	cdev->regview = FUNC7(pdev, 0);
	if (!cdev->regview) {
		FUNC0(cdev, "Cannot map register space, aborting\n");
		rc = -ENOMEM;
		goto err2;
	}

	cdev->db_phys_addr = FUNC15(cdev->pdev, 2);
	cdev->db_size = FUNC14(cdev->pdev, 2);
	if (!cdev->db_size) {
		if (FUNC1(cdev)) {
			FUNC0(cdev, "No Doorbell bar available\n");
			return -EINVAL;
		} else {
			return 0;
		}
	}

	cdev->doorbells = FUNC3(cdev->db_phys_addr, cdev->db_size);

	if (!cdev->doorbells) {
		FUNC0(cdev, "Cannot map doorbell space\n");
		return -ENOMEM;
	}

	return 0;

err2:
	FUNC10(pdev);
err1:
	FUNC4(pdev);
err0:
	return rc;
}