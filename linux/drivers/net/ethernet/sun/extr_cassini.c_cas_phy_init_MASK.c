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
typedef  int u16 ;
struct cas {int phy_type; int phy_id; int cas_flags; scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADVERTISE_100FULL ; 
 int ADVERTISE_100HALF ; 
 int ADVERTISE_10FULL ; 
 int ADVERTISE_10HALF ; 
 int BMCR_ANENABLE ; 
 int /*<<< orphan*/  BROADCOM_MII_REG4 ; 
 int /*<<< orphan*/  BROADCOM_MII_REG5 ; 
 int /*<<< orphan*/  BROADCOM_MII_REG7 ; 
 int /*<<< orphan*/  BROADCOM_MII_REG8 ; 
 int CAS_ADVERTISE_1000FULL ; 
 int CAS_ADVERTISE_1000HALF ; 
 int CAS_ADVERTISE_ASYM_PAUSE ; 
 int CAS_ADVERTISE_PAUSE ; 
 int CAS_FLAG_1000MB_CAP ; 
 int CAS_FLAG_SATURN ; 
 int /*<<< orphan*/  CAS_MII_1000_CTRL ; 
 scalar_t__ FUNC0 (int) ; 
 int CAS_PHY_MII_MDIO0 ; 
 int /*<<< orphan*/  LUCENT_MII_REG ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int PCS_CFG_EN ; 
 int PCS_DATAPATH_MODE_MII ; 
 int PCS_DATAPATH_MODE_SERDES ; 
 int PCS_MII_ADVERT_ASYM_PAUSE ; 
 int PCS_MII_ADVERT_FD ; 
 int PCS_MII_ADVERT_HD ; 
 int PCS_MII_ADVERT_SYM_PAUSE ; 
 int PCS_MII_RESET ; 
 int PCS_SERDES_CTRL_SYNCD_EN ; 
 int PHY_BROADCOM_5411 ; 
 int PHY_BROADCOM_B0 ; 
 int PHY_LUCENT_B0 ; 
 scalar_t__ PHY_NS_DP83065 ; 
 scalar_t__ REG_PCS_CFG ; 
 scalar_t__ REG_PCS_DATAPATH_MODE ; 
 scalar_t__ REG_PCS_MII_ADVERT ; 
 scalar_t__ REG_PCS_MII_CTRL ; 
 scalar_t__ REG_PCS_SERDES_CTRL ; 
 scalar_t__ REG_PCS_STATE_MACHINE ; 
 scalar_t__ REG_SATURN_PCFG ; 
 int SATURN_PCFG_FSI ; 
 int STOP_TRIES ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int FUNC3 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*) ; 
 int /*<<< orphan*/  FUNC6 (struct cas*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct cas *cp)
{
	u16 val;

	/* if we're in MII/GMII mode, set up phy */
	if (FUNC0(cp->phy_type)) {
		FUNC10(PCS_DATAPATH_MODE_MII,
		       cp->regs + REG_PCS_DATAPATH_MODE);

		FUNC1(cp, 0);
		FUNC5(cp); /* take out of isolate mode */

		if (PHY_LUCENT_B0 == cp->phy_id) {
			/* workaround link up/down issue with lucent */
			FUNC4(cp, LUCENT_MII_REG, 0x8000);
			FUNC4(cp, MII_BMCR, 0x00f1);
			FUNC4(cp, LUCENT_MII_REG, 0x0);

		} else if (PHY_BROADCOM_B0 == (cp->phy_id & 0xFFFFFFFC)) {
			/* workarounds for broadcom phy */
			FUNC4(cp, BROADCOM_MII_REG8, 0x0C20);
			FUNC4(cp, BROADCOM_MII_REG7, 0x0012);
			FUNC4(cp, BROADCOM_MII_REG5, 0x1804);
			FUNC4(cp, BROADCOM_MII_REG7, 0x0013);
			FUNC4(cp, BROADCOM_MII_REG5, 0x1204);
			FUNC4(cp, BROADCOM_MII_REG7, 0x8006);
			FUNC4(cp, BROADCOM_MII_REG5, 0x0132);
			FUNC4(cp, BROADCOM_MII_REG7, 0x8006);
			FUNC4(cp, BROADCOM_MII_REG5, 0x0232);
			FUNC4(cp, BROADCOM_MII_REG7, 0x201F);
			FUNC4(cp, BROADCOM_MII_REG5, 0x0A20);

		} else if (PHY_BROADCOM_5411 == cp->phy_id) {
			val = FUNC3(cp, BROADCOM_MII_REG4);
			val = FUNC3(cp, BROADCOM_MII_REG4);
			if (val & 0x0080) {
				/* link workaround */
				FUNC4(cp, BROADCOM_MII_REG4,
					      val & ~0x0080);
			}

		} else if (cp->cas_flags & CAS_FLAG_SATURN) {
			FUNC10((cp->phy_type & CAS_PHY_MII_MDIO0) ?
			       SATURN_PCFG_FSI : 0x0,
			       cp->regs + REG_SATURN_PCFG);

			/* load firmware to address 10Mbps auto-negotiation
			 * issue. NOTE: this will need to be changed if the
			 * default firmware gets fixed.
			 */
			if (PHY_NS_DP83065 == cp->phy_id) {
				FUNC6(cp);
			}
			FUNC2(cp);
		}

		/* advertise capabilities */
		val = FUNC3(cp, MII_BMCR);
		val &= ~BMCR_ANENABLE;
		FUNC4(cp, MII_BMCR, val);
		FUNC9(10);

		FUNC4(cp, MII_ADVERTISE,
			      FUNC3(cp, MII_ADVERTISE) |
			      (ADVERTISE_10HALF | ADVERTISE_10FULL |
			       ADVERTISE_100HALF | ADVERTISE_100FULL |
			       CAS_ADVERTISE_PAUSE |
			       CAS_ADVERTISE_ASYM_PAUSE));

		if (cp->cas_flags & CAS_FLAG_1000MB_CAP) {
			/* make sure that we don't advertise half
			 * duplex to avoid a chip issue
			 */
			val  = FUNC3(cp, CAS_MII_1000_CTRL);
			val &= ~CAS_ADVERTISE_1000HALF;
			val |= CAS_ADVERTISE_1000FULL;
			FUNC4(cp, CAS_MII_1000_CTRL, val);
		}

	} else {
		/* reset pcs for serdes */
		u32 val;
		int limit;

		FUNC10(PCS_DATAPATH_MODE_SERDES,
		       cp->regs + REG_PCS_DATAPATH_MODE);

		/* enable serdes pins on saturn */
		if (cp->cas_flags & CAS_FLAG_SATURN)
			FUNC10(0, cp->regs + REG_SATURN_PCFG);

		/* Reset PCS unit. */
		val = FUNC8(cp->regs + REG_PCS_MII_CTRL);
		val |= PCS_MII_RESET;
		FUNC10(val, cp->regs + REG_PCS_MII_CTRL);

		limit = STOP_TRIES;
		while (--limit > 0) {
			FUNC9(10);
			if ((FUNC8(cp->regs + REG_PCS_MII_CTRL) &
			     PCS_MII_RESET) == 0)
				break;
		}
		if (limit <= 0)
			FUNC7(cp->dev, "PCS reset bit would not clear [%08x]\n",
				    FUNC8(cp->regs + REG_PCS_STATE_MACHINE));

		/* Make sure PCS is disabled while changing advertisement
		 * configuration.
		 */
		FUNC10(0x0, cp->regs + REG_PCS_CFG);

		/* Advertise all capabilities except half-duplex. */
		val  = FUNC8(cp->regs + REG_PCS_MII_ADVERT);
		val &= ~PCS_MII_ADVERT_HD;
		val |= (PCS_MII_ADVERT_FD | PCS_MII_ADVERT_SYM_PAUSE |
			PCS_MII_ADVERT_ASYM_PAUSE);
		FUNC10(val, cp->regs + REG_PCS_MII_ADVERT);

		/* enable PCS */
		FUNC10(PCS_CFG_EN, cp->regs + REG_PCS_CFG);

		/* pcs workaround: enable sync detect */
		FUNC10(PCS_SERDES_CTRL_SYNCD_EN,
		       cp->regs + REG_PCS_SERDES_CTRL);
	}
}