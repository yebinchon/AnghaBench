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
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct cgx {int cgx_id; int /*<<< orphan*/  cgx_list; int /*<<< orphan*/  cgx_cmd_workq; int /*<<< orphan*/  cgx_cmd_work; int /*<<< orphan*/  reg_base; struct pci_dev* pdev; } ;

/* Variables and functions */
 int CGX_ID_MASK ; 
 int CGX_NVEC ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_CFG_REG_BAR_NUM ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cgx_list ; 
 int /*<<< orphan*/  FUNC3 (struct cgx*) ; 
 int FUNC4 (struct cgx*) ; 
 int /*<<< orphan*/  cgx_lmac_linkup_work ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct cgx* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct cgx*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct device *dev = &pdev->dev;
	struct cgx *cgx;
	int err, nvec;

	cgx = FUNC6(dev, sizeof(*cgx), GFP_KERNEL);
	if (!cgx)
		return -ENOMEM;
	cgx->pdev = pdev;

	FUNC16(pdev, cgx);

	err = FUNC11(pdev);
	if (err) {
		FUNC5(dev, "Failed to enable PCI device\n");
		FUNC16(pdev, NULL);
		return err;
	}

	err = FUNC14(pdev, DRV_NAME);
	if (err) {
		FUNC5(dev, "PCI request regions failed 0x%x\n", err);
		goto err_disable_device;
	}

	/* MAP configuration registers */
	cgx->reg_base = FUNC17(pdev, PCI_CFG_REG_BAR_NUM, 0);
	if (!cgx->reg_base) {
		FUNC5(dev, "CGX: Cannot map CSR memory space, aborting\n");
		err = -ENOMEM;
		goto err_release_regions;
	}

	nvec = CGX_NVEC;
	err = FUNC9(pdev, nvec, nvec, PCI_IRQ_MSIX);
	if (err < 0 || err != nvec) {
		FUNC5(dev, "Request for %d msix vectors failed, err %d\n",
			nvec, err);
		goto err_release_regions;
	}

	cgx->cgx_id = (FUNC15(pdev, PCI_CFG_REG_BAR_NUM) >> 24)
		& CGX_ID_MASK;

	/* init wq for processing linkup requests */
	FUNC0(&cgx->cgx_cmd_work, cgx_lmac_linkup_work);
	cgx->cgx_cmd_workq = FUNC1("cgx_cmd_workq", 0, 0);
	if (!cgx->cgx_cmd_workq) {
		FUNC5(dev, "alloc workqueue failed for cgx cmd");
		err = -ENOMEM;
		goto err_free_irq_vectors;
	}

	FUNC7(&cgx->cgx_list, &cgx_list);

	FUNC2();

	err = FUNC4(cgx);
	if (err)
		goto err_release_lmac;

	return 0;

err_release_lmac:
	FUNC3(cgx);
	FUNC8(&cgx->cgx_list);
err_free_irq_vectors:
	FUNC12(pdev);
err_release_regions:
	FUNC13(pdev);
err_disable_device:
	FUNC10(pdev);
	FUNC16(pdev, NULL);
	return err;
}