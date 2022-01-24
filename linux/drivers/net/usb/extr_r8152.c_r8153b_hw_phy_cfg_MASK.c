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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int eee_ckdiv; int eee_cmod_lv; int _10m_ckdiv; int eee_plloff_giga; int _250m_ckdiv; } ;
struct r8152 {int /*<<< orphan*/  flags; scalar_t__ eee_en; TYPE_1__ ups_info; } ;

/* Variables and functions */
 int EEE_CLKDIV_EN ; 
 int EN_10M_CLKDIV ; 
 int EN_EEE_1000 ; 
 int EN_EEE_CMODE ; 
 int /*<<< orphan*/  GREEN_ETHERNET ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  MCU_TYPE_USB ; 
 int OCP_ADC_IOFFSET ; 
 int OCP_DOWN_SPEED ; 
 int OCP_NCTL_CFG ; 
 int OCP_POWER_CFG ; 
 int OCP_SYSCLK_CFG ; 
 int PFM_PWM_SWITCH ; 
 int PGA_RETURN_EN ; 
 int /*<<< orphan*/  PHY_RESET ; 
 int /*<<< orphan*/  PLA_PHY_PWR ; 
 int R_TUNE_EN ; 
 int SAW_CNT_1MS_MASK ; 
 int /*<<< orphan*/  SRAM_GREEN_CFG ; 
 int /*<<< orphan*/  USB_UPS_CFG ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct r8152 *tp)
{
	u32 ocp_data;
	u16 data;

	/* disable ALDPS before updating the PHY parameters */
	FUNC7(tp, false);

	/* disable EEE before updating the PHY parameters */
	FUNC11(tp, false);

	FUNC10(tp, FUNC15(GREEN_ETHERNET, &tp->flags));

	data = FUNC13(tp, SRAM_GREEN_CFG);
	data |= R_TUNE_EN;
	FUNC14(tp, SRAM_GREEN_CFG, data);
	data = FUNC2(tp, OCP_NCTL_CFG);
	data |= PGA_RETURN_EN;
	FUNC3(tp, OCP_NCTL_CFG, data);

	/* ADC Bias Calibration:
	 * read efuse offset 0x7d to get a 17-bit data. Remove the dummy/fake
	 * bit (bit3) to rebuild the real 16-bit data. Write the data to the
	 * ADC ioffset.
	 */
	ocp_data = FUNC5(tp, 0x7d);
	data = (u16)(((ocp_data & 0x1fff0) >> 1) | (ocp_data & 0x7));
	if (data != 0xffff)
		FUNC3(tp, OCP_ADC_IOFFSET, data);

	/* ups mode tx-link-pulse timing adjustment:
	 * rg_saw_cnt = OCP reg 0xC426 Bit[13:0]
	 * swr_cnt_1ms_ini = 16000000 / rg_saw_cnt
	 */
	ocp_data = FUNC2(tp, 0xc426);
	ocp_data &= 0x3fff;
	if (ocp_data) {
		u32 swr_cnt_1ms_ini;

		swr_cnt_1ms_ini = (16000000 / ocp_data) & SAW_CNT_1MS_MASK;
		ocp_data = FUNC1(tp, MCU_TYPE_USB, USB_UPS_CFG);
		ocp_data = (ocp_data & ~SAW_CNT_1MS_MASK) | swr_cnt_1ms_ini;
		FUNC4(tp, MCU_TYPE_USB, USB_UPS_CFG, ocp_data);
	}

	ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
	ocp_data |= PFM_PWM_SWITCH;
	FUNC4(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);

	/* Advnace EEE */
	if (!FUNC8(tp, true)) {
		data = FUNC2(tp, OCP_POWER_CFG);
		data |= EEE_CLKDIV_EN;
		FUNC3(tp, OCP_POWER_CFG, data);
		tp->ups_info.eee_ckdiv = true;

		data = FUNC2(tp, OCP_DOWN_SPEED);
		data |= EN_EEE_CMODE | EN_EEE_1000 | EN_10M_CLKDIV;
		FUNC3(tp, OCP_DOWN_SPEED, data);
		tp->ups_info.eee_cmod_lv = true;
		tp->ups_info._10m_ckdiv = true;
		tp->ups_info.eee_plloff_giga = true;

		FUNC3(tp, OCP_SYSCLK_CFG, 0);
		FUNC3(tp, OCP_SYSCLK_CFG, FUNC0(5));
		tp->ups_info._250m_ckdiv = true;

		FUNC8(tp, false);
	}

	if (tp->eee_en)
		FUNC11(tp, true);

	FUNC7(tp, true);
	FUNC6(tp);
	FUNC9(tp, true);

	FUNC12(PHY_RESET, &tp->flags);
}