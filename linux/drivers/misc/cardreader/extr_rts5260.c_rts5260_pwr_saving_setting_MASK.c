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
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 int /*<<< orphan*/  ASPM_L1_1_EN ; 
 int /*<<< orphan*/  ASPM_L1_2_EN ; 
 int /*<<< orphan*/  CFG_L1_0_CRC_MISC_RET_VALUE ; 
 int CFG_L1_0_CRC_MISC_RET_VALUE_DEFAULT ; 
 int /*<<< orphan*/  CFG_L1_0_CRC_SD30_RET_VALUE ; 
 int /*<<< orphan*/  CFG_L1_0_CRC_SD40_RET_VALUE ; 
 int /*<<< orphan*/  CFG_L1_0_PCIE_DPHY_RET_VALUE ; 
 int /*<<< orphan*/  CFG_L1_0_PCIE_MAC_RET_VALUE ; 
 int CFG_L1_0_RET_VALUE_DEFAULT ; 
 int /*<<< orphan*/  CFG_L1_0_SYS_RET_VALUE ; 
 int /*<<< orphan*/  CFG_LP_FPWM_VALUE ; 
 int CFG_LP_FPWM_VALUE_DEFAULT ; 
 int /*<<< orphan*/  CFG_PCIE_APHY_OFF_0 ; 
 int CFG_PCIE_APHY_OFF_0_DEFAULT ; 
 int /*<<< orphan*/  CFG_PCIE_APHY_OFF_1 ; 
 int CFG_PCIE_APHY_OFF_1_DEFAULT ; 
 int /*<<< orphan*/  CFG_PCIE_APHY_OFF_2 ; 
 int CFG_PCIE_APHY_OFF_2_DEFAULT ; 
 int /*<<< orphan*/  CFG_PCIE_APHY_OFF_3 ; 
 int CFG_PCIE_APHY_OFF_3_DEFAULT ; 
 int PCIE_L1_0_EN ; 
 int PCIE_L1_0_PD_FE_EN ; 
 int PCIE_L1_1_EN ; 
 int PCIE_L1_1_PD_FE_EN ; 
 int PCIE_L1_2_EN ; 
 int PCIE_L1_2_PD_FE_EN ; 
 int /*<<< orphan*/  PM_L1_1_EN ; 
 int /*<<< orphan*/  PM_L1_2_EN ; 
 int /*<<< orphan*/  PWC_CDR ; 
 int PWC_CDR_DEFAULT ; 
 int /*<<< orphan*/  PWR_FE_CTL ; 
 int /*<<< orphan*/  PWR_GLOBAL_CTRL ; 
 int /*<<< orphan*/  RTS5260_DVCC_CTRL ; 
 int RTS5260_DVCC_OCP_CL_EN ; 
 int RTS5260_DVCC_OCP_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,char*) ; 
 int FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtsx_pcr *pcr)
{
	int lss_l1_1, lss_l1_2;

	lss_l1_1 = FUNC1(pcr, ASPM_L1_1_EN)
			| FUNC1(pcr, PM_L1_1_EN);
	lss_l1_2 = FUNC1(pcr, ASPM_L1_2_EN)
			| FUNC1(pcr, PM_L1_2_EN);

	FUNC2(pcr, ASPM_FORCE_CTL, 0xFF, 0);
	if (lss_l1_2) {
		FUNC0(pcr, "Set parameters for L1.2.");
		FUNC2(pcr, PWR_GLOBAL_CTRL,
					0xFF, PCIE_L1_2_EN);
		FUNC2(pcr, RTS5260_DVCC_CTRL,
					RTS5260_DVCC_OCP_EN |
					RTS5260_DVCC_OCP_CL_EN,
					RTS5260_DVCC_OCP_EN |
					RTS5260_DVCC_OCP_CL_EN);

		FUNC2(pcr, PWR_FE_CTL,
					0xFF, PCIE_L1_2_PD_FE_EN);
	} else if (lss_l1_1) {
		FUNC0(pcr, "Set parameters for L1.1.");
		FUNC2(pcr, PWR_GLOBAL_CTRL,
					0xFF, PCIE_L1_1_EN);
		FUNC2(pcr, PWR_FE_CTL,
					0xFF, PCIE_L1_1_PD_FE_EN);
	} else {
		FUNC0(pcr, "Set parameters for L1.");
		FUNC2(pcr, PWR_GLOBAL_CTRL,
					0xFF, PCIE_L1_0_EN);
		FUNC2(pcr, PWR_FE_CTL,
					0xFF, PCIE_L1_0_PD_FE_EN);
	}

	FUNC2(pcr, CFG_L1_0_PCIE_DPHY_RET_VALUE,
				0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
	FUNC2(pcr, CFG_L1_0_PCIE_MAC_RET_VALUE,
				0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
	FUNC2(pcr, CFG_L1_0_CRC_SD30_RET_VALUE,
				0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
	FUNC2(pcr, CFG_L1_0_CRC_SD40_RET_VALUE,
				0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
	FUNC2(pcr, CFG_L1_0_SYS_RET_VALUE,
				0xFF, CFG_L1_0_RET_VALUE_DEFAULT);
	/*Option cut APHY*/
	FUNC2(pcr, CFG_PCIE_APHY_OFF_0,
				0xFF, CFG_PCIE_APHY_OFF_0_DEFAULT);
	FUNC2(pcr, CFG_PCIE_APHY_OFF_1,
				0xFF, CFG_PCIE_APHY_OFF_1_DEFAULT);
	FUNC2(pcr, CFG_PCIE_APHY_OFF_2,
				0xFF, CFG_PCIE_APHY_OFF_2_DEFAULT);
	FUNC2(pcr, CFG_PCIE_APHY_OFF_3,
				0xFF, CFG_PCIE_APHY_OFF_3_DEFAULT);
	/*CDR DEC*/
	FUNC2(pcr, PWC_CDR, 0xFF, PWC_CDR_DEFAULT);
	/*PWMPFM*/
	FUNC2(pcr, CFG_LP_FPWM_VALUE,
				0xFF, CFG_LP_FPWM_VALUE_DEFAULT);
	/*No Power Saving WA*/
	FUNC2(pcr, CFG_L1_0_CRC_MISC_RET_VALUE,
				0xFF, CFG_L1_0_CRC_MISC_RET_VALUE_DEFAULT);
}