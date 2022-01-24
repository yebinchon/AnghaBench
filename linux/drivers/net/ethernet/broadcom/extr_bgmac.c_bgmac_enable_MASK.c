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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct bgmac {int feature_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKCTLST ; 
 int /*<<< orphan*/  BCMA_CLKCTLST_FORCEHT ; 
 int /*<<< orphan*/  BGMAC_CHIPCTL_1_RXC_DLL_BYPASS ; 
 int /*<<< orphan*/  BGMAC_CMDCFG ; 
 int BGMAC_CMDCFG_RE ; 
 int BGMAC_CMDCFG_SR_REV0 ; 
 int BGMAC_CMDCFG_SR_REV4 ; 
 int BGMAC_CMDCFG_TE ; 
 int /*<<< orphan*/  BGMAC_DEV_STATUS ; 
 int BGMAC_DS_MM_MASK ; 
 int BGMAC_DS_MM_SHIFT ; 
 int BGMAC_FEAT_CLKCTLST ; 
 int BGMAC_FEAT_CMDCFG_SR_REV4 ; 
 int BGMAC_FEAT_FLW_CTRL1 ; 
 int BGMAC_FEAT_FLW_CTRL2 ; 
 int BGMAC_FEAT_SET_RXQ_CLK ; 
 int /*<<< orphan*/  BGMAC_FLOW_CTL_THRESH ; 
 int /*<<< orphan*/  BGMAC_PAUSE_CTL ; 
 int /*<<< orphan*/  BGMAC_RXQ_CTL ; 
 int BGMAC_RXQ_CTL_MDP_MASK ; 
 int BGMAC_RXQ_CTL_MDP_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,int,int,int) ; 
 int FUNC2 (struct bgmac*) ; 
 int FUNC3 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bgmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct bgmac *bgmac)
{
	u32 cmdcfg_sr;
	u32 cmdcfg;
	u32 mode;

	if (bgmac->feature_flags & BGMAC_FEAT_CMDCFG_SR_REV4)
		cmdcfg_sr = BGMAC_CMDCFG_SR_REV4;
	else
		cmdcfg_sr = BGMAC_CMDCFG_SR_REV0;

	cmdcfg = FUNC3(bgmac, BGMAC_CMDCFG);
	FUNC1(bgmac, ~(BGMAC_CMDCFG_TE | BGMAC_CMDCFG_RE),
			     cmdcfg_sr, true);
	FUNC6(2);
	cmdcfg |= BGMAC_CMDCFG_TE | BGMAC_CMDCFG_RE;
	FUNC5(bgmac, BGMAC_CMDCFG, cmdcfg);

	mode = (FUNC3(bgmac, BGMAC_DEV_STATUS) & BGMAC_DS_MM_MASK) >>
		BGMAC_DS_MM_SHIFT;
	if (bgmac->feature_flags & BGMAC_FEAT_CLKCTLST || mode != 0)
		FUNC4(bgmac, BCMA_CLKCTLST, BCMA_CLKCTLST_FORCEHT);
	if (!(bgmac->feature_flags & BGMAC_FEAT_CLKCTLST) && mode == 2)
		FUNC0(bgmac, 1, ~0,
				      BGMAC_CHIPCTL_1_RXC_DLL_BYPASS);

	if (bgmac->feature_flags & (BGMAC_FEAT_FLW_CTRL1 |
				    BGMAC_FEAT_FLW_CTRL2)) {
		u32 fl_ctl;

		if (bgmac->feature_flags & BGMAC_FEAT_FLW_CTRL1)
			fl_ctl = 0x2300e1;
		else
			fl_ctl = 0x03cb04cb;

		FUNC5(bgmac, BGMAC_FLOW_CTL_THRESH, fl_ctl);
		FUNC5(bgmac, BGMAC_PAUSE_CTL, 0x27fff);
	}

	if (bgmac->feature_flags & BGMAC_FEAT_SET_RXQ_CLK) {
		u32 rxq_ctl;
		u16 bp_clk;
		u8 mdp;

		rxq_ctl = FUNC3(bgmac, BGMAC_RXQ_CTL);
		rxq_ctl &= ~BGMAC_RXQ_CTL_MDP_MASK;
		bp_clk = FUNC2(bgmac) / 1000000;
		mdp = (bp_clk * 128 / 1000) - 3;
		rxq_ctl |= (mdp << BGMAC_RXQ_CTL_MDP_SHIFT);
		FUNC5(bgmac, BGMAC_RXQ_CTL, rxq_ctl);
	}
}