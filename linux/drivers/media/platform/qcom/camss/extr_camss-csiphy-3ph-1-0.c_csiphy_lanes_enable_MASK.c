#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int pos; } ;
struct csiphy_lanes_cfg {int num_data; TYPE_3__* data; TYPE_2__ clk; } ;
struct csiphy_device {scalar_t__ base; int /*<<< orphan*/  timer_clk_rate; } ;
struct csiphy_config {TYPE_1__* csi2; } ;
struct TYPE_6__ {int pos; } ;
struct TYPE_4__ {struct csiphy_lanes_cfg lane_cfg; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int CSIPHY_3PH_LNn_CFG1_SWI_REC_DLY_PRG ; 
 scalar_t__ FUNC3 (int) ; 
 int CSIPHY_3PH_LNn_CFG2_LP_REC_EN_INT ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int CSIPHY_3PH_LNn_CFG4_T_HS_CLK_MISS ; 
 scalar_t__ FUNC6 (int) ; 
 int CSIPHY_3PH_LNn_CFG5_HS_REC_EQ_FQ_INT ; 
 int CSIPHY_3PH_LNn_CFG5_T_HS_DTERM ; 
 scalar_t__ FUNC7 (int) ; 
 int CSIPHY_3PH_LNn_CFG6_SWI_FORCE_INIT_EXIT ; 
 scalar_t__ FUNC8 (int) ; 
 int CSIPHY_3PH_LNn_CFG7_SWI_T_INIT ; 
 scalar_t__ FUNC9 (int) ; 
 int CSIPHY_3PH_LNn_CFG8_SKEW_FILTER_ENABLE ; 
 int CSIPHY_3PH_LNn_CFG8_SWI_SKIP_WAKEUP ; 
 scalar_t__ FUNC10 (int) ; 
 int CSIPHY_3PH_LNn_CFG9_SWI_T_WAKEUP ; 
 scalar_t__ FUNC11 (int) ; 
 int CSIPHY_3PH_LNn_CSI_LANE_CTRL15_SWI_SOT_SYMBOL ; 
 scalar_t__ FUNC12 (int) ; 
 int CSIPHY_3PH_LNn_MISC1_IS_CLKLANE ; 
 scalar_t__ FUNC13 (int) ; 
 int CSIPHY_3PH_LNn_TEST_IMP_HS_TERM_IMP ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct csiphy_device *csiphy,
				struct csiphy_config *cfg,
				u32 pixel_clock, u8 bpp, u8 lane_mask)
{
	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
	u8 settle_cnt;
	u8 val, l = 0;
	int i;

	settle_cnt = FUNC14(pixel_clock, bpp, c->num_data,
					    csiphy->timer_clk_rate);

	val = FUNC0(c->clk.pos);
	for (i = 0; i < c->num_data; i++)
		val |= FUNC0(c->data[i].pos * 2);

	FUNC15(val, csiphy->base + FUNC1(5));

	val = CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B;
	FUNC15(val, csiphy->base + FUNC1(6));

	for (i = 0; i <= c->num_data; i++) {
		if (i == c->num_data)
			l = 7;
		else
			l = c->data[i].pos * 2;

		val = CSIPHY_3PH_LNn_CFG1_SWI_REC_DLY_PRG;
		val |= 0x17;
		FUNC15(val, csiphy->base + FUNC2(l));

		val = CSIPHY_3PH_LNn_CFG2_LP_REC_EN_INT;
		FUNC15(val, csiphy->base + FUNC3(l));

		val = settle_cnt;
		FUNC15(val, csiphy->base + FUNC4(l));

		val = CSIPHY_3PH_LNn_CFG5_T_HS_DTERM |
			CSIPHY_3PH_LNn_CFG5_HS_REC_EQ_FQ_INT;
		FUNC15(val, csiphy->base + FUNC6(l));

		val = CSIPHY_3PH_LNn_CFG6_SWI_FORCE_INIT_EXIT;
		FUNC15(val, csiphy->base + FUNC7(l));

		val = CSIPHY_3PH_LNn_CFG7_SWI_T_INIT;
		FUNC15(val, csiphy->base + FUNC8(l));

		val = CSIPHY_3PH_LNn_CFG8_SWI_SKIP_WAKEUP |
			CSIPHY_3PH_LNn_CFG8_SKEW_FILTER_ENABLE;
		FUNC15(val, csiphy->base + FUNC9(l));

		val = CSIPHY_3PH_LNn_CFG9_SWI_T_WAKEUP;
		FUNC15(val, csiphy->base + FUNC10(l));

		val = CSIPHY_3PH_LNn_TEST_IMP_HS_TERM_IMP;
		FUNC15(val, csiphy->base + FUNC13(l));

		val = CSIPHY_3PH_LNn_CSI_LANE_CTRL15_SWI_SOT_SYMBOL;
		FUNC15(val, csiphy->base +
				    FUNC11(l));
	}

	val = CSIPHY_3PH_LNn_CFG1_SWI_REC_DLY_PRG;
	FUNC15(val, csiphy->base + FUNC2(l));

	val = CSIPHY_3PH_LNn_CFG4_T_HS_CLK_MISS;
	FUNC15(val, csiphy->base + FUNC5(l));

	val = CSIPHY_3PH_LNn_MISC1_IS_CLKLANE;
	FUNC15(val, csiphy->base + FUNC12(l));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(11));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(12));

	val = 0xfb;
	FUNC15(val, csiphy->base + FUNC1(13));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(14));

	val = 0x7f;
	FUNC15(val, csiphy->base + FUNC1(15));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(16));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(17));

	val = 0xef;
	FUNC15(val, csiphy->base + FUNC1(18));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(19));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(20));

	val = 0xff;
	FUNC15(val, csiphy->base + FUNC1(21));
}