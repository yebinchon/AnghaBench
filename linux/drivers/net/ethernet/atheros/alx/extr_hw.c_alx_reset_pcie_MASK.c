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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct alx_hw {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_MASTER ; 
 int ALX_MASTER_PCLKSEL_SRDS ; 
 int ALX_MASTER_WAKEN_25M ; 
 int ALX_PCI_CMD ; 
 int /*<<< orphan*/  ALX_PDLL_TRNS1 ; 
 int ALX_PDLL_TRNS1_D3PLLOFF_EN ; 
 int /*<<< orphan*/  ALX_UE_SVRT ; 
 int ALX_UE_SVRT_DLPROTERR ; 
 int ALX_UE_SVRT_FCPROTERR ; 
 int /*<<< orphan*/  ALX_WOL0 ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*) ; 
 scalar_t__ FUNC2 (struct alx_hw*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct alx_hw *hw)
{
	u8 rev = FUNC1(hw);
	u32 val;
	u16 val16;

	/* Workaround for PCI problem when BIOS sets MMRBC incorrectly. */
	FUNC6(hw->pdev, PCI_COMMAND, &val16);
	if (!(val16 & ALX_PCI_CMD) || (val16 & PCI_COMMAND_INTX_DISABLE)) {
		val16 = (val16 | ALX_PCI_CMD) & ~PCI_COMMAND_INTX_DISABLE;
		FUNC7(hw->pdev, PCI_COMMAND, val16);
	}

	/* clear WoL setting/status */
	val = FUNC4(hw, ALX_WOL0);
	FUNC5(hw, ALX_WOL0, 0);

	val = FUNC4(hw, ALX_PDLL_TRNS1);
	FUNC5(hw, ALX_PDLL_TRNS1, val & ~ALX_PDLL_TRNS1_D3PLLOFF_EN);

	/* mask some pcie error bits */
	val = FUNC4(hw, ALX_UE_SVRT);
	val &= ~(ALX_UE_SVRT_DLPROTERR | ALX_UE_SVRT_FCPROTERR);
	FUNC5(hw, ALX_UE_SVRT, val);

	/* wol 25M & pclk */
	val = FUNC4(hw, ALX_MASTER);
	if (FUNC3(rev) && FUNC2(hw)) {
		if ((val & ALX_MASTER_WAKEN_25M) == 0 ||
		    (val & ALX_MASTER_PCLKSEL_SRDS) == 0)
			FUNC5(hw, ALX_MASTER,
					val | ALX_MASTER_PCLKSEL_SRDS |
					ALX_MASTER_WAKEN_25M);
	} else {
		if ((val & ALX_MASTER_WAKEN_25M) == 0 ||
		    (val & ALX_MASTER_PCLKSEL_SRDS) != 0)
			FUNC5(hw, ALX_MASTER,
					(val & ~ALX_MASTER_PCLKSEL_SRDS) |
					ALX_MASTER_WAKEN_25M);
	}

	/* ASPM setting */
	FUNC0(hw, true, true);

	FUNC8(10);
}