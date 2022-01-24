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
struct rvu_hwinfo {int dummy; } ;
struct rvu {struct rvu* hw; int /*<<< orphan*/  afpf_wq_info; int /*<<< orphan*/  total_pfs; void* pfreg_base; void* afreg_base; struct device* dev; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_AF_REG_BAR_NUM ; 
 int /*<<< orphan*/  PCI_PF_REG_BAR_NUM ; 
 int /*<<< orphan*/  TYPE_AFPF ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct rvu*) ; 
 void* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct rvu*) ; 
 void* FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rvu_afpf_mbox_handler ; 
 int /*<<< orphan*/  rvu_afpf_mbox_up_handler ; 
 int /*<<< orphan*/  FUNC12 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC13 (struct rvu*) ; 
 int FUNC14 (struct rvu*) ; 
 int FUNC15 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC16 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC17 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct rvu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC21 (struct rvu*) ; 
 int FUNC22 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC23 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC24 (struct rvu*) ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct device *dev = &pdev->dev;
	struct rvu *rvu;
	int    err;

	rvu = FUNC3(dev, sizeof(*rvu), GFP_KERNEL);
	if (!rvu)
		return -ENOMEM;

	rvu->hw = FUNC3(dev, sizeof(struct rvu_hwinfo), GFP_KERNEL);
	if (!rvu->hw) {
		FUNC2(dev, rvu);
		return -ENOMEM;
	}

	FUNC10(pdev, rvu);
	rvu->pdev = pdev;
	rvu->dev = &pdev->dev;

	err = FUNC5(pdev);
	if (err) {
		FUNC1(dev, "Failed to enable PCI device\n");
		goto err_freemem;
	}

	err = FUNC7(pdev, DRV_NAME);
	if (err) {
		FUNC1(dev, "PCI request regions failed 0x%x\n", err);
		goto err_disable_device;
	}

	err = FUNC9(pdev, FUNC0(48));
	if (err) {
		FUNC1(dev, "Unable to set DMA mask\n");
		goto err_release_regions;
	}

	err = FUNC8(pdev, FUNC0(48));
	if (err) {
		FUNC1(dev, "Unable to set consistent DMA mask\n");
		goto err_release_regions;
	}

	/* Map Admin function CSRs */
	rvu->afreg_base = FUNC11(pdev, PCI_AF_REG_BAR_NUM, 0);
	rvu->pfreg_base = FUNC11(pdev, PCI_PF_REG_BAR_NUM, 0);
	if (!rvu->afreg_base || !rvu->pfreg_base) {
		FUNC1(dev, "Unable to map admin function CSRs, aborting\n");
		err = -ENOMEM;
		goto err_release_regions;
	}

	/* Store module params in rvu structure */
	FUNC24(rvu);

	/* Check which blocks the HW supports */
	FUNC13(rvu);

	FUNC21(rvu);

	err = FUNC22(rvu);
	if (err)
		goto err_release_regions;

	/* Init mailbox btw AF and PFs */
	err = FUNC19(rvu, &rvu->afpf_wq_info, TYPE_AFPF,
			    rvu->hw->total_pfs, rvu_afpf_mbox_handler,
			    rvu_afpf_mbox_up_handler);
	if (err)
		goto err_hwsetup;

	err = FUNC15(rvu);
	if (err)
		goto err_mbox;

	err = FUNC20(rvu);
	if (err)
		goto err_flr;

	/* Enable AF's VFs (if any) */
	err = FUNC14(rvu);
	if (err)
		goto err_irq;

	return 0;
err_irq:
	FUNC23(rvu);
err_flr:
	FUNC16(rvu);
err_mbox:
	FUNC18(&rvu->afpf_wq_info);
err_hwsetup:
	FUNC12(rvu);
	FUNC21(rvu);
	FUNC17(rvu);
err_release_regions:
	FUNC6(pdev);
err_disable_device:
	FUNC4(pdev);
err_freemem:
	FUNC10(pdev, NULL);
	FUNC2(&pdev->dev, rvu->hw);
	FUNC2(dev, rvu);
	return err;
}