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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct r8152 {int version; int /*<<< orphan*/  flags; scalar_t__ eee_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTAP_SHORT_EN ; 
 int /*<<< orphan*/  EEE_CLKDIV_EN ; 
 int /*<<< orphan*/  EN_10M_BGOFF ; 
 int /*<<< orphan*/  EN_10M_PLLOFF ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  OCP_DOWN_SPEED ; 
 int /*<<< orphan*/  OCP_EEE_CFG ; 
 int /*<<< orphan*/  OCP_POWER_CFG ; 
 int /*<<< orphan*/  PFM_PWM_SWITCH ; 
 int /*<<< orphan*/  PHY_RESET ; 
 int /*<<< orphan*/  PLA_PHY_PWR ; 
#define  RTL_VER_03 131 
#define  RTL_VER_04 130 
#define  RTL_VER_05 129 
#define  RTL_VER_06 128 
 int /*<<< orphan*/  SRAM_10M_AMP1 ; 
 int /*<<< orphan*/  SRAM_10M_AMP2 ; 
 int /*<<< orphan*/  SRAM_IMPEDANCE ; 
 int /*<<< orphan*/  SRAM_LPF_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct r8152 *tp)
{
	u32 ocp_data;
	u16 data;

	/* disable ALDPS before updating the PHY parameters */
	FUNC5(tp, false);

	/* disable EEE before updating the PHY parameters */
	FUNC7(tp, false);

	if (tp->version == RTL_VER_03) {
		data = FUNC1(tp, OCP_EEE_CFG);
		data &= ~CTAP_SHORT_EN;
		FUNC2(tp, OCP_EEE_CFG, data);
	}

	data = FUNC1(tp, OCP_POWER_CFG);
	data |= EEE_CLKDIV_EN;
	FUNC2(tp, OCP_POWER_CFG, data);

	data = FUNC1(tp, OCP_DOWN_SPEED);
	data |= EN_10M_BGOFF;
	FUNC2(tp, OCP_DOWN_SPEED, data);
	data = FUNC1(tp, OCP_POWER_CFG);
	data |= EN_10M_PLLOFF;
	FUNC2(tp, OCP_POWER_CFG, data);
	FUNC9(tp, SRAM_IMPEDANCE, 0x0b13);

	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
	ocp_data |= PFM_PWM_SWITCH;
	FUNC3(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);

	/* Enable LPF corner auto tune */
	FUNC9(tp, SRAM_LPF_CFG, 0xf70f);

	/* Adjust 10M Amplitude */
	FUNC9(tp, SRAM_10M_AMP1, 0x00af);
	FUNC9(tp, SRAM_10M_AMP2, 0x0208);

	if (tp->eee_en)
		FUNC7(tp, true);

	FUNC5(tp, true);
	FUNC4(tp);

	switch (tp->version) {
	case RTL_VER_03:
	case RTL_VER_04:
		break;
	case RTL_VER_05:
	case RTL_VER_06:
	default:
		FUNC6(tp, true);
		break;
	}

	FUNC8(PHY_RESET, &tp->flags);
}