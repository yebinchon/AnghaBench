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
struct tg3 {int phy_flags; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5704 ; 
 scalar_t__ ASIC_REV_5906 ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_PDOWN ; 
 scalar_t__ CHIPREV_5761_AX ; 
 scalar_t__ CHIPREV_5784_AX ; 
 int CPMU_LSPD_1000MB_MACCLK_12_5 ; 
 int CPMU_LSPD_1000MB_MACCLK_MASK ; 
 int /*<<< orphan*/  GRC_MISC_CFG ; 
 int GRC_MISC_CFG_EPHY_IDDQ ; 
 int /*<<< orphan*/  MAC_SERDES_CFG ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MII_TG3_AUXCTL_PCTL_100TX_LPWR ; 
 int MII_TG3_AUXCTL_PCTL_SPR_ISOLATE ; 
 int MII_TG3_AUXCTL_PCTL_VREG_11V ; 
 int /*<<< orphan*/  MII_TG3_AUXCTL_SHDWSEL_PWRCTL ; 
 int /*<<< orphan*/  MII_TG3_EXT_CTRL ; 
 int MII_TG3_EXT_CTRL_FORCE_LED_OFF ; 
 int MII_TG3_FET_SHADOW_EN ; 
 int /*<<< orphan*/  MII_TG3_FET_SHDW_AUXMODE4 ; 
 int MII_TG3_FET_SHDW_AUXMODE4_SBPD ; 
 int /*<<< orphan*/  MII_TG3_FET_TEST ; 
 int /*<<< orphan*/  SG_DIG_CTRL ; 
 int SG_DIG_SOFT_RESET ; 
 int SG_DIG_USING_HW_AUTONEG ; 
 int /*<<< orphan*/  TG3_CPMU_LSPD_1000MB_CLK ; 
 int TG3_PHYFLG_IS_FET ; 
 int TG3_PHYFLG_KEEP_LINK_ON_PWRDN ; 
 int TG3_PHYFLG_PHY_SERDES ; 
 scalar_t__ FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 scalar_t__ FUNC5 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct tg3 *tp, bool do_low_power)
{
	u32 val;

	if (tp->phy_flags & TG3_PHYFLG_KEEP_LINK_ON_PWRDN)
		return;

	if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES) {
		if (FUNC0(tp) == ASIC_REV_5704) {
			u32 sg_dig_ctrl = FUNC8(SG_DIG_CTRL);
			u32 serdes_cfg = FUNC8(MAC_SERDES_CFG);

			sg_dig_ctrl |=
				SG_DIG_USING_HW_AUTONEG | SG_DIG_SOFT_RESET;
			FUNC9(SG_DIG_CTRL, sg_dig_ctrl);
			FUNC9(MAC_SERDES_CFG, serdes_cfg | (1 << 15));
		}
		return;
	}

	if (FUNC0(tp) == ASIC_REV_5906) {
		FUNC1(tp);
		val = FUNC8(GRC_MISC_CFG);
		FUNC10(GRC_MISC_CFG, val | GRC_MISC_CFG_EPHY_IDDQ);
		FUNC11(40);
		return;
	} else if (tp->phy_flags & TG3_PHYFLG_IS_FET) {
		u32 phytest;
		if (!FUNC6(tp, MII_TG3_FET_TEST, &phytest)) {
			u32 phy;

			FUNC7(tp, MII_ADVERTISE, 0);
			FUNC7(tp, MII_BMCR,
				     BMCR_ANENABLE | BMCR_ANRESTART);

			FUNC7(tp, MII_TG3_FET_TEST,
				     phytest | MII_TG3_FET_SHADOW_EN);
			if (!FUNC6(tp, MII_TG3_FET_SHDW_AUXMODE4, &phy)) {
				phy |= MII_TG3_FET_SHDW_AUXMODE4_SBPD;
				FUNC7(tp,
					     MII_TG3_FET_SHDW_AUXMODE4,
					     phy);
			}
			FUNC7(tp, MII_TG3_FET_TEST, phytest);
		}
		return;
	} else if (do_low_power) {
		if (!FUNC4(tp))
			FUNC7(tp, MII_TG3_EXT_CTRL,
				     MII_TG3_EXT_CTRL_FORCE_LED_OFF);

		val = MII_TG3_AUXCTL_PCTL_100TX_LPWR |
		      MII_TG3_AUXCTL_PCTL_SPR_ISOLATE |
		      MII_TG3_AUXCTL_PCTL_VREG_11V;
		FUNC3(tp, MII_TG3_AUXCTL_SHDWSEL_PWRCTL, val);
	}

	/* The PHY should not be powered down on some chips because
	 * of bugs.
	 */
	if (FUNC5(tp))
		return;

	if (FUNC2(tp) == CHIPREV_5784_AX ||
	    FUNC2(tp) == CHIPREV_5761_AX) {
		val = FUNC8(TG3_CPMU_LSPD_1000MB_CLK);
		val &= ~CPMU_LSPD_1000MB_MACCLK_MASK;
		val |= CPMU_LSPD_1000MB_MACCLK_12_5;
		FUNC10(TG3_CPMU_LSPD_1000MB_CLK, val);
	}

	FUNC7(tp, MII_BMCR, BMCR_PDOWN);
}