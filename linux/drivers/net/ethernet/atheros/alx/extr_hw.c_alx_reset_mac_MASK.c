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
struct alx_hw {int rx_ctrl; } ;

/* Variables and functions */
 int ALX_DMA_MAC_RST_TO ; 
 int /*<<< orphan*/  ALX_IMR ; 
 int /*<<< orphan*/  ALX_ISR ; 
 int ALX_ISR_DIS ; 
 int /*<<< orphan*/  ALX_MAC_CTRL ; 
 int /*<<< orphan*/  ALX_MASTER ; 
 int ALX_MASTER_DMA_MAC_RST ; 
 int ALX_MASTER_OOB_DIS ; 
 int ALX_MASTER_PCLKSEL_SRDS ; 
 int /*<<< orphan*/  ALX_MISC ; 
 int /*<<< orphan*/  ALX_MISC3 ; 
 int ALX_MISC3_25M_BY_SW ; 
 int ALX_MISC3_25M_NOTO_INTNL ; 
 int ALX_MISC_INTNLOSC_OPEN ; 
 int ALX_MISC_ISO_EN ; 
 int /*<<< orphan*/  ALX_MSIX_MASK ; 
 int /*<<< orphan*/  ALX_PMCTRL ; 
 int ALX_PMCTRL_L0S_EN ; 
 int ALX_PMCTRL_L1_EN ; 
 int /*<<< orphan*/  ALX_RFD_PIDX ; 
 int /*<<< orphan*/  ALX_SERDES ; 
 int ALX_SERDES_MACCLK_SLWDWN ; 
 int ALX_SERDES_PHYCLK_SLWDWN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*) ; 
 scalar_t__ FUNC1 (struct alx_hw*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct alx_hw *hw)
{
	u32 val, pmctrl;
	int i, ret;
	u8 rev;
	bool a_cr;

	pmctrl = 0;
	rev = FUNC0(hw);
	a_cr = FUNC2(rev) && FUNC1(hw);

	/* disable all interrupts, RXQ/TXQ */
	FUNC6(hw, ALX_MSIX_MASK, 0xFFFFFFFF);
	FUNC6(hw, ALX_IMR, 0);
	FUNC6(hw, ALX_ISR, ALX_ISR_DIS);

	ret = FUNC5(hw);
	if (ret)
		return ret;

	/* mac reset workaroud */
	FUNC6(hw, ALX_RFD_PIDX, 1);

	/* dis l0s/l1 before mac reset */
	if (a_cr) {
		pmctrl = FUNC3(hw, ALX_PMCTRL);
		if (pmctrl & (ALX_PMCTRL_L1_EN | ALX_PMCTRL_L0S_EN))
			FUNC6(hw, ALX_PMCTRL,
					pmctrl & ~(ALX_PMCTRL_L1_EN |
						   ALX_PMCTRL_L0S_EN));
	}

	/* reset whole mac safely */
	val = FUNC3(hw, ALX_MASTER);
	FUNC6(hw, ALX_MASTER,
			val | ALX_MASTER_DMA_MAC_RST | ALX_MASTER_OOB_DIS);

	/* make sure it's real idle */
	FUNC7(10);
	for (i = 0; i < ALX_DMA_MAC_RST_TO; i++) {
		val = FUNC3(hw, ALX_RFD_PIDX);
		if (val == 0)
			break;
		FUNC7(10);
	}
	for (; i < ALX_DMA_MAC_RST_TO; i++) {
		val = FUNC3(hw, ALX_MASTER);
		if ((val & ALX_MASTER_DMA_MAC_RST) == 0)
			break;
		FUNC7(10);
	}
	if (i == ALX_DMA_MAC_RST_TO)
		return -EIO;
	FUNC7(10);

	if (a_cr) {
		FUNC6(hw, ALX_MASTER, val | ALX_MASTER_PCLKSEL_SRDS);
		/* restore l0s / l1 */
		if (pmctrl & (ALX_PMCTRL_L1_EN | ALX_PMCTRL_L0S_EN))
			FUNC6(hw, ALX_PMCTRL, pmctrl);
	}

	FUNC4(hw, rev);

	/* clear Internal OSC settings, switching OSC by hw itself,
	 * disable isolate for rev A devices
	 */
	val = FUNC3(hw, ALX_MISC3);
	FUNC6(hw, ALX_MISC3,
			(val & ~ALX_MISC3_25M_BY_SW) |
			ALX_MISC3_25M_NOTO_INTNL);
	val = FUNC3(hw, ALX_MISC);
	val &= ~ALX_MISC_INTNLOSC_OPEN;
	if (FUNC2(rev))
		val &= ~ALX_MISC_ISO_EN;
	FUNC6(hw, ALX_MISC, val);
	FUNC7(20);

	/* driver control speed/duplex, hash-alg */
	FUNC6(hw, ALX_MAC_CTRL, hw->rx_ctrl);

	val = FUNC3(hw, ALX_SERDES);
	FUNC6(hw, ALX_SERDES,
			val | ALX_SERDES_MACCLK_SLWDWN |
			ALX_SERDES_PHYCLK_SLWDWN);

	return 0;
}