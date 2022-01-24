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
struct rvu {int vfs; int /*<<< orphan*/  afvf_wq_info; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_AFVF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct pci_dev*,int) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  rvu_afvf_mbox_handler ; 
 int /*<<< orphan*/  rvu_afvf_mbox_up_handler ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct rvu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rvu *rvu)
{
	struct pci_dev *pdev = rvu->pdev;
	int err, chans, vfs;

	if (!FUNC5(rvu)) {
		FUNC0(&pdev->dev,
			 "Skipping SRIOV enablement since not enough IRQs are available\n");
		return 0;
	}

	chans = FUNC1();
	if (chans < 0)
		return chans;

	vfs = FUNC4(pdev);

	/* Limit VFs in case we have more VFs than LBK channels available. */
	if (vfs > chans)
		vfs = chans;

	/* AF's VFs work in pairs and talk over consecutive loopback channels.
	 * Thus we want to enable maximum even number of VFs. In case
	 * odd number of VFs are available then the last VF on the list
	 * remains disabled.
	 */
	if (vfs & 0x1) {
		FUNC0(&pdev->dev,
			 "Number of VFs should be even. Enabling %d out of %d.\n",
			 vfs - 1, vfs);
		vfs--;
	}

	if (!vfs)
		return 0;

	/* Save VFs number for reference in VF interrupts handlers.
	 * Since interrupts might start arriving during SRIOV enablement
	 * ordinary API cannot be used to get number of enabled VFs.
	 */
	rvu->vfs = vfs;

	err = FUNC9(rvu, &rvu->afvf_wq_info, TYPE_AFVF, vfs,
			    rvu_afvf_mbox_handler, rvu_afvf_mbox_up_handler);
	if (err)
		return err;

	FUNC7(rvu);
	/* Make sure IRQs are enabled before SRIOV. */
	FUNC2();

	err = FUNC3(pdev, vfs);
	if (err) {
		FUNC6(rvu);
		FUNC8(&rvu->afvf_wq_info);
		return err;
	}

	return 0;
}