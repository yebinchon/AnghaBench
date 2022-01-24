#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct lpphy_tx_gains {int dummy; } ;
struct lpphy_rx_iq_comp {scalar_t__ chan; int c1; int c0; } ;
struct TYPE_4__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_2__ phy; TYPE_1__* dev; } ;
struct b43_phy_lp {scalar_t__ channel; } ;
typedef  int /*<<< orphan*/  oldgains ;
typedef  int /*<<< orphan*/  nogains ;
struct TYPE_3__ {int chip_id; } ;

/* Variables and functions */
 int FUNC0 (struct lpphy_rx_iq_comp*) ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_CTL_OVR ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_CTL_OVRVAL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RX_COMP_COEFF_S ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 struct lpphy_rx_iq_comp* lpphy_5354_iq_table ; 
 int FUNC7 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 struct lpphy_tx_gains FUNC11 (struct b43_wldev*) ; 
 struct lpphy_rx_iq_comp* lpphy_rev0_1_iq_table ; 
 struct lpphy_rx_iq_comp lpphy_rev2plus_iq_comp ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,struct lpphy_tx_gains) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpphy_tx_gains*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct b43_wldev *dev, bool noise, bool tx,
			    bool rx, bool pa, struct lpphy_tx_gains *gains)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	const struct lpphy_rx_iq_comp *iqcomp = NULL;
	struct lpphy_tx_gains nogains, oldgains;
	u16 tmp;
	int i, ret;

	FUNC18(&nogains, 0, sizeof(nogains));
	FUNC18(&oldgains, 0, sizeof(oldgains));

	if (dev->dev->chip_id == 0x5354) {
		for (i = 0; i < FUNC0(lpphy_5354_iq_table); i++) {
			if (lpphy_5354_iq_table[i].chan == lpphy->channel) {
				iqcomp = &lpphy_5354_iq_table[i];
			}
		}
	} else if (dev->phy.rev >= 2) {
		iqcomp = &lpphy_rev2plus_iq_comp;
	} else {
		for (i = 0; i < FUNC0(lpphy_rev0_1_iq_table); i++) {
			if (lpphy_rev0_1_iq_table[i].chan == lpphy->channel) {
				iqcomp = &lpphy_rev0_1_iq_table[i];
			}
		}
	}

	if (FUNC1(!iqcomp))
		return 0;

	FUNC4(dev, B43_LPPHY_RX_COMP_COEFF_S, 0xFF00, iqcomp->c1);
	FUNC4(dev, B43_LPPHY_RX_COMP_COEFF_S,
			0x00FF, iqcomp->c0 << 8);

	if (noise) {
		tx = true;
		rx = false;
		pa = false;
	}

	FUNC14(dev, tx, rx);

	if (FUNC2(dev->wl) == NL80211_BAND_2GHZ) {
		FUNC6(dev, B43_LPPHY_RF_OVERRIDE_0, 0x8);
		FUNC4(dev, B43_LPPHY_RF_OVERRIDE_VAL_0,
				0xFFF7, pa << 3);
	} else {
		FUNC6(dev, B43_LPPHY_RF_OVERRIDE_0, 0x20);
		FUNC4(dev, B43_LPPHY_RF_OVERRIDE_VAL_0,
				0xFFDF, pa << 5);
	}

	tmp = FUNC5(dev, B43_LPPHY_AFE_CTL_OVR) & 0x40;

	if (noise)
		FUNC13(dev, 0x2D5D);
	else {
		if (tmp)
			oldgains = FUNC11(dev);
		if (!gains)
			gains = &nogains;
		FUNC15(dev, *gains);
	}

	FUNC3(dev, B43_LPPHY_AFE_CTL_OVR, 0xFFFE);
	FUNC3(dev, B43_LPPHY_AFE_CTL_OVRVAL, 0xFFFE);
	FUNC6(dev, B43_LPPHY_RF_OVERRIDE_0, 0x800);
	FUNC6(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x800);
	FUNC12(dev, false);
	if (noise)
		ret = FUNC7(dev, 0xFFF0);
	else {
		FUNC16(dev, 4000, 100);
		ret = FUNC7(dev, 0x4000);
		FUNC17(dev);
	}
	FUNC8(dev, false);
	FUNC3(dev, B43_LPPHY_RF_OVERRIDE_0, 0xFFFC);
	FUNC3(dev, B43_LPPHY_RF_OVERRIDE_0, 0xFFF7);
	FUNC3(dev, B43_LPPHY_RF_OVERRIDE_0, 0xFFDF);
	if (!noise) {
		if (tmp)
			FUNC15(dev, oldgains);
		else
			FUNC10(dev);
	}
	FUNC9(dev);
	FUNC3(dev, B43_LPPHY_AFE_CTL_OVR, 0xFFFE);
	FUNC3(dev, B43_LPPHY_AFE_CTL_OVRVAL, 0xF7FF);
	return ret;
}