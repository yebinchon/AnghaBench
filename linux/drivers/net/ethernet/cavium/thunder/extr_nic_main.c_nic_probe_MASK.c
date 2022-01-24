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
typedef  union nic_mbx {int dummy; } nic_mbx ;
typedef  int u8 ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct nicpf {int /*<<< orphan*/  vf_lmac_map; TYPE_1__* hw; int /*<<< orphan*/  node; int /*<<< orphan*/  reg_base; struct pci_dev* pdev; } ;
struct hw_info {int dummy; } ;
struct TYPE_2__ {int bgx_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_LMAC_PER_BGX ; 
 int /*<<< orphan*/  PCI_CFG_REG_BAR_NUM ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct nicpf*) ; 
 int FUNC8 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC9 (struct nicpf*) ; 
 int FUNC10 (struct pci_dev*,struct nicpf*) ; 
 int /*<<< orphan*/  FUNC11 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct nicpf*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct device *dev = &pdev->dev;
	struct nicpf *nic;
	u8     max_lmac;
	int    err;

	FUNC0(sizeof(union nic_mbx) > 16);

	nic = FUNC4(dev, sizeof(*nic), GFP_KERNEL);
	if (!nic)
		return -ENOMEM;

	nic->hw = FUNC4(dev, sizeof(struct hw_info), GFP_KERNEL);
	if (!nic->hw)
		return -ENOMEM;

	FUNC18(pdev, nic);

	nic->pdev = pdev;

	err = FUNC13(pdev);
	if (err) {
		FUNC2(dev, "Failed to enable PCI device\n");
		FUNC18(pdev, NULL);
		return err;
	}

	err = FUNC15(pdev, DRV_NAME);
	if (err) {
		FUNC2(dev, "PCI request regions failed 0x%x\n", err);
		goto err_disable_device;
	}

	err = FUNC17(pdev, FUNC1(48));
	if (err) {
		FUNC2(dev, "Unable to get usable DMA configuration\n");
		goto err_release_regions;
	}

	err = FUNC16(pdev, FUNC1(48));
	if (err) {
		FUNC2(dev, "Unable to get 48-bit DMA for consistent allocations\n");
		goto err_release_regions;
	}

	/* MAP PF's configuration registers */
	nic->reg_base = FUNC19(pdev, PCI_CFG_REG_BAR_NUM, 0);
	if (!nic->reg_base) {
		FUNC2(dev, "Cannot map config register space, aborting\n");
		err = -ENOMEM;
		goto err_release_regions;
	}

	nic->node = FUNC6(pdev);

	/* Get HW capability info */
	FUNC5(nic);

	/* Allocate memory for LMAC tracking elements */
	err = -ENOMEM;
	max_lmac = nic->hw->bgx_cnt * MAX_LMAC_PER_BGX;

	nic->vf_lmac_map = FUNC3(dev, max_lmac, sizeof(u8),
					      GFP_KERNEL);
	if (!nic->vf_lmac_map)
		goto err_release_regions;

	/* Initialize hardware */
	FUNC7(nic);

	FUNC9(nic);

	/* Register interrupts */
	err = FUNC8(nic);
	if (err)
		goto err_release_regions;

	/* Configure SRIOV */
	err = FUNC10(pdev, nic);
	if (err)
		goto err_unregister_interrupts;

	return 0;

err_unregister_interrupts:
	FUNC11(nic);
err_release_regions:
	FUNC14(pdev);
err_disable_device:
	FUNC12(pdev);
	FUNC18(pdev, NULL);
	return err;
}