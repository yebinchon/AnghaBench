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
struct enetc_hw {scalar_t__ reg; scalar_t__ global; scalar_t__ port; } ;
struct enetc_si {int pad; struct enetc_hw hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ENETC_BAR_REGS ; 
 int ENETC_GLOBAL_BASE ; 
 int ENETC_PORT_BASE ; 
 int ENETC_SI_ALIGN ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct enetc_si* FUNC2 (struct enetc_si*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC6 (struct enetc_si*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct enetc_si* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,char const*) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 

int FUNC18(struct pci_dev *pdev, const char *name, int sizeof_priv)
{
	struct enetc_si *si, *p;
	struct enetc_hw *hw;
	size_t alloc_size;
	int err, len;

	FUNC17(pdev);
	err = FUNC10(pdev);
	if (err) {
		FUNC3(&pdev->dev, "device enable failed\n");
		return err;
	}

	/* set up for high or low dma */
	err = FUNC4(&pdev->dev, FUNC1(64));
	if (err) {
		err = FUNC4(&pdev->dev, FUNC1(32));
		if (err) {
			FUNC3(&pdev->dev,
				"DMA configuration failed: 0x%x\n", err);
			goto err_dma;
		}
	}

	err = FUNC12(pdev, name);
	if (err) {
		FUNC3(&pdev->dev, "pci_request_regions failed err=%d\n", err);
		goto err_pci_mem_reg;
	}

	FUNC16(pdev);

	alloc_size = sizeof(struct enetc_si);
	if (sizeof_priv) {
		/* align priv to 32B */
		alloc_size = FUNC0(alloc_size, ENETC_SI_ALIGN);
		alloc_size += sizeof_priv;
	}
	/* force 32B alignment for enetc_si */
	alloc_size += ENETC_SI_ALIGN - 1;

	p = FUNC8(alloc_size, GFP_KERNEL);
	if (!p) {
		err = -ENOMEM;
		goto err_alloc_si;
	}

	si = FUNC2(p, ENETC_SI_ALIGN);
	si->pad = (char *)si - (char *)p;

	FUNC15(pdev, si);
	si->pdev = pdev;
	hw = &si->hw;

	len = FUNC13(pdev, ENETC_BAR_REGS);
	hw->reg = FUNC7(FUNC14(pdev, ENETC_BAR_REGS), len);
	if (!hw->reg) {
		err = -ENXIO;
		FUNC3(&pdev->dev, "ioremap() failed\n");
		goto err_ioremap;
	}
	if (len > ENETC_PORT_BASE)
		hw->port = hw->reg + ENETC_PORT_BASE;
	if (len > ENETC_GLOBAL_BASE)
		hw->global = hw->reg + ENETC_GLOBAL_BASE;

	FUNC5(si);

	return 0;

err_ioremap:
	FUNC6(si);
err_alloc_si:
	FUNC11(pdev);
err_pci_mem_reg:
err_dma:
	FUNC9(pdev);

	return err;
}