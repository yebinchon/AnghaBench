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
struct qed_probe_params {int /*<<< orphan*/  recov_in_prog; int /*<<< orphan*/  dp_level; int /*<<< orphan*/  dp_module; scalar_t__ is_vf; int /*<<< orphan*/  protocol; } ;
struct qed_dev {int b_is_vf; int /*<<< orphan*/  recov_in_prog; int /*<<< orphan*/  protocol; int /*<<< orphan*/  drv_type; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,char*) ; 
 int /*<<< orphan*/  DRV_ID_DRV_TYPE_LINUX ; 
 int /*<<< orphan*/  QED_PCI_DEFAULT ; 
 struct qed_dev* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_dev*) ; 
 int FUNC6 (struct qed_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qed_dev*,struct pci_dev*) ; 

__attribute__((used)) static struct qed_dev *FUNC9(struct pci_dev *pdev,
				 struct qed_probe_params *params)
{
	struct qed_dev *cdev;
	int rc;

	cdev = FUNC2(pdev);
	if (!cdev)
		goto err0;

	cdev->drv_type = DRV_ID_DRV_TYPE_LINUX;
	cdev->protocol = params->protocol;

	if (params->is_vf)
		cdev->b_is_vf = true;

	FUNC7(cdev, params->dp_module, params->dp_level);

	cdev->recov_in_prog = params->recov_in_prog;

	rc = FUNC8(cdev, pdev);
	if (rc) {
		FUNC0(cdev, "init pci failed\n");
		goto err1;
	}
	FUNC1(cdev, "PCI init completed successfully\n");

	rc = FUNC3(cdev);
	if (rc) {
		FUNC1(cdev, "Failed to register devlink.\n");
		goto err2;
	}

	rc = FUNC6(cdev, QED_PCI_DEFAULT);
	if (rc) {
		FUNC0(cdev, "hw prepare failed\n");
		goto err2;
	}

	FUNC1(cdev, "qed_probe completed successfully\n");

	return cdev;

err2:
	FUNC5(cdev);
err1:
	FUNC4(cdev);
err0:
	return NULL;
}