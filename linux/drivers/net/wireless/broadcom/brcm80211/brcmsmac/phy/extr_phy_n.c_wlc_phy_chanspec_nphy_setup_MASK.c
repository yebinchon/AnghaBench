#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct nphy_sfo_cfg {int PHY_BW1a; int PHY_BW2; int PHY_BW3; int PHY_BW4; int PHY_BW5; int PHY_BW6; } ;
struct TYPE_8__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int radio_chanspec; scalar_t__ nphy_txpwrctrl; scalar_t__ phy_spuravoid; int phy_isspuravoid; TYPE_3__ pubpi; TYPE_2__* sh; TYPE_4__* d11core; scalar_t__ nphy_aband_spurwar_en; } ;
struct TYPE_9__ {TYPE_1__* bus; } ;
struct TYPE_7__ {scalar_t__ chip; scalar_t__ chippkg; int /*<<< orphan*/  physhim; } ;
struct TYPE_6__ {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 int BBCFG_RESETCCA ; 
 int BBCFG_RESETRX ; 
 scalar_t__ BCMA_CHIP_ID_BCM43224 ; 
 scalar_t__ BCMA_CHIP_ID_BCM43225 ; 
 scalar_t__ BCMA_CHIP_ID_BCM4716 ; 
 scalar_t__ BCMA_CHIP_ID_BCM47162 ; 
 scalar_t__ BCMA_PKG_ID_BCM4717 ; 
 int BPHY_BB_CONFIG ; 
 int BPHY_TEST ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int MAC_PHY_FORCE_CLK ; 
 int NPHY_BandControl_currentBand ; 
 int /*<<< orphan*/  NPHY_ClassifierCtrl_ofdm_en ; 
 int NPHY_TO_BPHY_OFF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHY_TPC_HW_OFF ; 
 scalar_t__ SPURAVOID_DISABLE ; 
 scalar_t__ SPURAVOID_FORCEON ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  psm_phy_hdr_param ; 
 int FUNC13 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  tsf_clk_frac_h ; 
 int /*<<< orphan*/  tsf_clk_frac_l ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC20 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC22 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC23(struct brcms_phy *pi, u16 chanspec,
			    const struct nphy_sfo_cfg *ci)
{
	u16 val;

	val = FUNC13(pi, 0x09) & NPHY_BandControl_currentBand;
	if (FUNC3(chanspec) && !val) {

		val = FUNC9(pi->d11core, FUNC4(psm_phy_hdr_param));
		FUNC10(pi->d11core, FUNC4(psm_phy_hdr_param),
		      (val | MAC_PHY_FORCE_CLK));

		FUNC12(pi, (NPHY_TO_BPHY_OFF + BPHY_BB_CONFIG),
			   (BBCFG_RESETCCA | BBCFG_RESETRX));

		FUNC10(pi->d11core, FUNC4(psm_phy_hdr_param), val);

		FUNC12(pi, 0x09, NPHY_BandControl_currentBand);
	} else if (!FUNC3(chanspec) && val) {

		FUNC7(pi, 0x09, ~NPHY_BandControl_currentBand);

		val = FUNC9(pi->d11core, FUNC4(psm_phy_hdr_param));
		FUNC10(pi->d11core, FUNC4(psm_phy_hdr_param),
		      (val | MAC_PHY_FORCE_CLK));

		FUNC7(pi, (NPHY_TO_BPHY_OFF + BPHY_BB_CONFIG),
			    (u16) (~(BBCFG_RESETCCA | BBCFG_RESETRX)));

		FUNC10(pi->d11core, FUNC4(psm_phy_hdr_param), val);
	}

	FUNC22(pi, 0x1ce, ci->PHY_BW1a);
	FUNC22(pi, 0x1cf, ci->PHY_BW2);
	FUNC22(pi, 0x1d0, ci->PHY_BW3);

	FUNC22(pi, 0x1d1, ci->PHY_BW4);
	FUNC22(pi, 0x1d2, ci->PHY_BW5);
	FUNC22(pi, 0x1d3, ci->PHY_BW6);

	if (FUNC0(pi->radio_chanspec) == 14) {
		FUNC17(pi, NPHY_ClassifierCtrl_ofdm_en, 0);

		FUNC12(pi, NPHY_TO_BPHY_OFF + BPHY_TEST, 0x800);
	} else {
		FUNC17(pi, NPHY_ClassifierCtrl_ofdm_en,
					NPHY_ClassifierCtrl_ofdm_en);

		if (FUNC1(chanspec))
			FUNC7(pi, NPHY_TO_BPHY_OFF + BPHY_TEST, ~0x840);
	}

	if (pi->nphy_txpwrctrl == PHY_TPC_HW_OFF)
		FUNC21(pi);

	if (FUNC6(pi->pubpi.phy_rev, 3))
		FUNC16(pi);

	FUNC20(pi);

	if (FUNC5(pi->pubpi.phy_rev, 3)
	    && (pi->phy_spuravoid != SPURAVOID_DISABLE)) {
		u8 spuravoid = 0;

		val = FUNC0(chanspec);
		if (!FUNC2(pi->radio_chanspec)) {
			if (FUNC5(pi->pubpi.phy_rev, 7)) {
				if ((val == 13) || (val == 14) || (val == 153))
					spuravoid = 1;
			} else if (((val >= 5) && (val <= 8)) || (val == 13)
				   || (val == 14)) {
				spuravoid = 1;
			}
		} else if (FUNC5(pi->pubpi.phy_rev, 7)) {
			if (val == 54)
				spuravoid = 1;
		} else if (pi->nphy_aband_spurwar_en &&
		    ((val == 38) || (val == 102) || (val == 118))) {
			if ((pi->sh->chip == BCMA_CHIP_ID_BCM4716)
			    && (pi->sh->chippkg == BCMA_PKG_ID_BCM4717)) {
				spuravoid = 0;
			} else {
				spuravoid = 1;
			}
		}

		if (pi->phy_spuravoid == SPURAVOID_FORCEON)
			spuravoid = 1;

		if ((pi->sh->chip == BCMA_CHIP_ID_BCM4716) ||
		    (pi->sh->chip == BCMA_CHIP_ID_BCM43225)) {
			FUNC8(&pi->d11core->bus->drv_cc,
						     spuravoid);
		} else {
			FUNC14(pi->sh->physhim, false);
			FUNC8(&pi->d11core->bus->drv_cc,
						     spuravoid);
			FUNC14(pi->sh->physhim, true);
		}

		if ((pi->sh->chip == BCMA_CHIP_ID_BCM43224) ||
		    (pi->sh->chip == BCMA_CHIP_ID_BCM43225)) {
			if (spuravoid == 1) {
				FUNC10(pi->d11core,
					     FUNC4(tsf_clk_frac_l),
					     0x5341);
				FUNC10(pi->d11core,
					     FUNC4(tsf_clk_frac_h), 0x8);
			} else {
				FUNC10(pi->d11core,
					     FUNC4(tsf_clk_frac_l),
					     0x8889);
				FUNC10(pi->d11core,
					     FUNC4(tsf_clk_frac_h), 0x8);
			}
		}

		if (!((pi->sh->chip == BCMA_CHIP_ID_BCM4716) ||
		      (pi->sh->chip == BCMA_CHIP_ID_BCM47162)))
			FUNC15(pi->sh->physhim);

		FUNC11(pi, 0x01, (0x1 << 15),
			    ((spuravoid > 0) ? (0x1 << 15) : 0));

		FUNC18(pi);

		pi->phy_isspuravoid = (spuravoid > 0);
	}

	if (FUNC6(pi->pubpi.phy_rev, 7))
		FUNC22(pi, 0x17e, 0x3830);

	FUNC19(pi);
}