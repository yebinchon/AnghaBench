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
typedef  int u32 ;
typedef  int u16 ;
struct sky2_hw {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ B0_HWE_IMSK ; 
 scalar_t__ B0_HWE_ISRC ; 
 int /*<<< orphan*/  B2_TST_CTRL1 ; 
 int /*<<< orphan*/  GMAC_TI_ST_CTRL ; 
 int /*<<< orphan*/  GMT_ST_CLR_IRQ ; 
 scalar_t__ PCI_ERR_UNCOR_STATUS ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_ERROR_BITS ; 
 int /*<<< orphan*/  TST_CFG_WRITE_OFF ; 
 int /*<<< orphan*/  TST_CFG_WRITE_ON ; 
 scalar_t__ Y2_CFG_AER ; 
 int Y2_HWE_L1_MASK ; 
 int Y2_IS_IRQ_STAT ; 
 int Y2_IS_MST_ERR ; 
 int Y2_IS_PCI_EXP ; 
 int Y2_IS_TIST_OV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int,int) ; 
 int FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sky2_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sky2_hw *hw)
{
	struct pci_dev *pdev = hw->pdev;
	u32 status = FUNC5(hw, B0_HWE_ISRC);
	u32 hwmsk = FUNC5(hw, B0_HWE_IMSK);

	status &= hwmsk;

	if (status & Y2_IS_TIST_OV)
		FUNC7(hw, GMAC_TI_ST_CTRL, GMT_ST_CLR_IRQ);

	if (status & (Y2_IS_MST_ERR | Y2_IS_IRQ_STAT)) {
		u16 pci_err;

		FUNC7(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
		pci_err = FUNC3(hw, PCI_STATUS);
		if (FUNC1())
			FUNC0(&pdev->dev, "PCI hardware error (0x%x)\n",
			        pci_err);

		FUNC4(hw, PCI_STATUS,
				      pci_err | PCI_STATUS_ERROR_BITS);
		FUNC7(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
	}

	if (status & Y2_IS_PCI_EXP) {
		/* PCI-Express uncorrectable Error occurred */
		u32 err;

		FUNC7(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
		err = FUNC5(hw, Y2_CFG_AER + PCI_ERR_UNCOR_STATUS);
		FUNC6(hw, Y2_CFG_AER + PCI_ERR_UNCOR_STATUS,
			     0xfffffffful);
		if (FUNC1())
			FUNC0(&pdev->dev, "PCI Express error (0x%x)\n", err);

		FUNC5(hw, Y2_CFG_AER + PCI_ERR_UNCOR_STATUS);
		FUNC7(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
	}

	if (status & Y2_HWE_L1_MASK)
		FUNC2(hw, 0, status);
	status >>= 8;
	if (status & Y2_HWE_L1_MASK)
		FUNC2(hw, 1, status);
}