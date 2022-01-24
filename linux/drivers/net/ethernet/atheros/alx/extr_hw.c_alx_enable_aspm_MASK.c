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
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_PMCTRL ; 
 int ALX_PMCTRL_ASPM_FCEN ; 
 int ALX_PMCTRL_HOTRST_WTEN ; 
 int ALX_PMCTRL_L0S_EN ; 
 int /*<<< orphan*/  ALX_PMCTRL_L1REG_TO_DEF ; 
 int /*<<< orphan*/  ALX_PMCTRL_L1REQ_TO ; 
 int ALX_PMCTRL_L1_BUFSRX_EN ; 
 int ALX_PMCTRL_L1_CLKSW_EN ; 
 int ALX_PMCTRL_L1_EN ; 
 int ALX_PMCTRL_L1_SRDSPLL_EN ; 
 int ALX_PMCTRL_L1_SRDSRX_PWD ; 
 int ALX_PMCTRL_L1_SRDS_EN ; 
 int /*<<< orphan*/  ALX_PMCTRL_L1_TIMER ; 
 int /*<<< orphan*/  ALX_PMCTRL_L1_TIMER_16US ; 
 int /*<<< orphan*/  ALX_PMCTRL_LCKDET_TIMER ; 
 int /*<<< orphan*/  ALX_PMCTRL_LCKDET_TIMER_DEF ; 
 int ALX_PMCTRL_RCVR_WT_1US ; 
 int ALX_PMCTRL_RXL1_AFTER_L0S ; 
 int ALX_PMCTRL_SADLY_EN ; 
 int ALX_PMCTRL_TXL1_AFTER_L0S ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*) ; 
 scalar_t__ FUNC2 (struct alx_hw*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct alx_hw *hw, bool l0s_en, bool l1_en)
{
	u32 pmctrl;
	u8 rev = FUNC1(hw);

	pmctrl = FUNC4(hw, ALX_PMCTRL);

	FUNC0(pmctrl, ALX_PMCTRL_LCKDET_TIMER,
		      ALX_PMCTRL_LCKDET_TIMER_DEF);
	pmctrl |= ALX_PMCTRL_RCVR_WT_1US |
		  ALX_PMCTRL_L1_CLKSW_EN |
		  ALX_PMCTRL_L1_SRDSRX_PWD;
	FUNC0(pmctrl, ALX_PMCTRL_L1REQ_TO, ALX_PMCTRL_L1REG_TO_DEF);
	FUNC0(pmctrl, ALX_PMCTRL_L1_TIMER, ALX_PMCTRL_L1_TIMER_16US);
	pmctrl &= ~(ALX_PMCTRL_L1_SRDS_EN |
		    ALX_PMCTRL_L1_SRDSPLL_EN |
		    ALX_PMCTRL_L1_BUFSRX_EN |
		    ALX_PMCTRL_SADLY_EN |
		    ALX_PMCTRL_HOTRST_WTEN|
		    ALX_PMCTRL_L0S_EN |
		    ALX_PMCTRL_L1_EN |
		    ALX_PMCTRL_ASPM_FCEN |
		    ALX_PMCTRL_TXL1_AFTER_L0S |
		    ALX_PMCTRL_RXL1_AFTER_L0S);
	if (FUNC3(rev) && FUNC2(hw))
		pmctrl |= ALX_PMCTRL_L1_SRDS_EN | ALX_PMCTRL_L1_SRDSPLL_EN;

	if (l0s_en)
		pmctrl |= (ALX_PMCTRL_L0S_EN | ALX_PMCTRL_ASPM_FCEN);
	if (l1_en)
		pmctrl |= (ALX_PMCTRL_L1_EN | ALX_PMCTRL_ASPM_FCEN);

	FUNC5(hw, ALX_PMCTRL, pmctrl);
}