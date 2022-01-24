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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE_ASPM_L1_EN ; 
 int /*<<< orphan*/  FUNC_FORCE_CTL ; 
 int /*<<< orphan*/  IC_VER_A ; 
 int /*<<< orphan*/  LDO_DV12S_CFG ; 
 int /*<<< orphan*/  LDO_DV18_CFG ; 
 int /*<<< orphan*/  LDO_DV18_SR_DF ; 
 int /*<<< orphan*/  LDO_DV18_SR_MASK ; 
 int /*<<< orphan*/  LDO_REF12_TUNE_DF ; 
 int /*<<< orphan*/  LDO_REF12_TUNE_MASK ; 
 int /*<<< orphan*/  LDO_VCC_CFG1 ; 
 int /*<<< orphan*/  LDO_VCC_LMT_EN ; 
 int /*<<< orphan*/  LDO_VCC_REF_1V2 ; 
 int /*<<< orphan*/  LDO_VCC_REF_TUNE_MASK ; 
 int /*<<< orphan*/  LDO_VIO_CFG ; 
 int /*<<< orphan*/  LDO_VIO_REF_1V2 ; 
 int /*<<< orphan*/  LDO_VIO_REF_TUNE_MASK ; 
 int /*<<< orphan*/  LDO_VIO_SR_DF ; 
 int /*<<< orphan*/  LDO_VIO_SR_MASK ; 
 int /*<<< orphan*/  PCLK_CTL ; 
 int /*<<< orphan*/  PCLK_MODE_SEL ; 
 int /*<<< orphan*/  PME_DEBUG_0 ; 
 int /*<<< orphan*/  PM_EVENT_DEBUG ; 
 int /*<<< orphan*/  SD40_LDO_CTL1 ; 
 int /*<<< orphan*/  SD40_VIO_TUNE_1V7 ; 
 int /*<<< orphan*/  SD40_VIO_TUNE_MASK ; 
 scalar_t__ FUNC0 (struct rtsx_pcr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rtsx_pcr *pcr)
{
	FUNC1(pcr);

	FUNC2(pcr, FUNC_FORCE_CTL,
		FORCE_ASPM_L1_EN, FORCE_ASPM_L1_EN);
	FUNC2(pcr, PM_EVENT_DEBUG, PME_DEBUG_0, PME_DEBUG_0);
	FUNC2(pcr, LDO_VCC_CFG1, LDO_VCC_LMT_EN,
		LDO_VCC_LMT_EN);
	FUNC2(pcr, PCLK_CTL, PCLK_MODE_SEL, PCLK_MODE_SEL);
	if (FUNC0(pcr, 0x524A, IC_VER_A)) {
		FUNC2(pcr, LDO_DV18_CFG,
			LDO_DV18_SR_MASK, LDO_DV18_SR_DF);
		FUNC2(pcr, LDO_VCC_CFG1,
			LDO_VCC_REF_TUNE_MASK, LDO_VCC_REF_1V2);
		FUNC2(pcr, LDO_VIO_CFG,
			LDO_VIO_REF_TUNE_MASK, LDO_VIO_REF_1V2);
		FUNC2(pcr, LDO_VIO_CFG,
			LDO_VIO_SR_MASK, LDO_VIO_SR_DF);
		FUNC2(pcr, LDO_DV12S_CFG,
			LDO_REF12_TUNE_MASK, LDO_REF12_TUNE_DF);
		FUNC2(pcr, SD40_LDO_CTL1,
			SD40_VIO_TUNE_MASK, SD40_VIO_TUNE_1V7);
	}

	return 0;
}