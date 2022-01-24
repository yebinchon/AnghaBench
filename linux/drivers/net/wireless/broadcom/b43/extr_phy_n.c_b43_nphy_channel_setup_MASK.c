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
typedef  int u8 ;
typedef  int u16 ;
struct ieee80211_channel {int hw_value; scalar_t__ band; } ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; TYPE_1__* dev; } ;
struct b43_phy_n_sfo_cfg {int dummy; } ;
struct b43_phy_n {scalar_t__ spur_avoid; scalar_t__ aband_spurwar_en; int /*<<< orphan*/  txpwrctrl; } ;
struct TYPE_2__ {int chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_PSM_PHY_HDR ; 
 int /*<<< orphan*/  B43_NPHY_BANDCTL ; 
 int B43_NPHY_BANDCTL_5GHZ ; 
 int /*<<< orphan*/  B43_NPHY_BBCFG ; 
 int B43_NPHY_BBCFG_RSTRX ; 
 int /*<<< orphan*/  B43_NPHY_NDATAT_DUP40 ; 
 int /*<<< orphan*/  B43_PHY_B_BBCFG ; 
 int B43_PHY_B_BBCFG_RSTCCA ; 
 int B43_PHY_B_BBCFG_RSTRX ; 
 int /*<<< orphan*/  B43_PHY_B_TEST ; 
 scalar_t__ B43_SPUR_AVOID_DISABLE ; 
 scalar_t__ B43_SPUR_AVOID_FORCE ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,struct b43_phy_n_sfo_cfg const*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct b43_wldev *dev,
				const struct b43_phy_n_sfo_cfg *e,
				struct ieee80211_channel *new_channel)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;
	int ch = new_channel->hw_value;
	u16 tmp16;

	if (new_channel->band == NL80211_BAND_5GHZ) {
		/* Switch to 2 GHz for a moment to access B43_PHY_B_BBCFG */
		FUNC10(dev, B43_NPHY_BANDCTL, ~B43_NPHY_BANDCTL_5GHZ);

		tmp16 = FUNC13(dev, B43_MMIO_PSM_PHY_HDR);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp16 | 4);
		/* Put BPHY in the reset */
		FUNC11(dev, B43_PHY_B_BBCFG,
			    B43_PHY_B_BBCFG_RSTCCA | B43_PHY_B_BBCFG_RSTRX);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp16);
		FUNC11(dev, B43_NPHY_BANDCTL, B43_NPHY_BANDCTL_5GHZ);
	} else if (new_channel->band == NL80211_BAND_2GHZ) {
		FUNC10(dev, B43_NPHY_BANDCTL, ~B43_NPHY_BANDCTL_5GHZ);
		tmp16 = FUNC13(dev, B43_MMIO_PSM_PHY_HDR);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp16 | 4);
		/* Take BPHY out of the reset */
		FUNC10(dev, B43_PHY_B_BBCFG,
			     (u16)~(B43_PHY_B_BBCFG_RSTCCA | B43_PHY_B_BBCFG_RSTRX));
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp16);
	}

	FUNC0(dev, e);

	if (new_channel->hw_value == 14) {
		FUNC4(dev, 2, 0);
		FUNC11(dev, B43_PHY_B_TEST, 0x0800);
	} else {
		FUNC4(dev, 2, 2);
		if (new_channel->band == NL80211_BAND_2GHZ)
			FUNC10(dev, B43_PHY_B_TEST, ~0x840);
	}

	if (!nphy->txpwrctrl)
		FUNC9(dev);

	if (dev->phy.rev < 3)
		FUNC3(dev);

	FUNC8(dev);

	if (dev->phy.rev >= 3 &&
	    dev->phy.n->spur_avoid != B43_SPUR_AVOID_DISABLE) {
		u8 spuravoid = 0;

		if (dev->phy.n->spur_avoid == B43_SPUR_AVOID_FORCE) {
			spuravoid = 1;
		} else if (phy->rev >= 19) {
			/* TODO */
		} else if (phy->rev >= 18) {
			/* TODO */
		} else if (phy->rev >= 17) {
			/* TODO: Off for channels 1-11, but check 12-14! */
		} else if (phy->rev >= 16) {
			/* TODO: Off for 2 GHz, but check 5 GHz! */
		} else if (phy->rev >= 7) {
			if (!FUNC1(dev)) { /* 20MHz */
				if (ch == 13 || ch == 14 || ch == 153)
					spuravoid = 1;
			} else { /* 40 MHz */
				if (ch == 54)
					spuravoid = 1;
			}
		} else {
			if (!FUNC1(dev)) { /* 20MHz */
				if ((ch >= 5 && ch <= 8) || ch == 13 || ch == 14)
					spuravoid = 1;
			} else { /* 40MHz */
				if (nphy->aband_spurwar_en &&
				    (ch == 38 || ch == 102 || ch == 118))
					spuravoid = dev->dev->chip_id == 0x4716;
			}
		}

		FUNC5(dev, spuravoid);

		FUNC2(dev, spuravoid);

		if (dev->phy.rev == 3 || dev->phy.rev == 4)
			FUNC14(dev);

		if (spuravoid)
			FUNC11(dev, B43_NPHY_BBCFG, B43_NPHY_BBCFG_RSTRX);
		else
			FUNC10(dev, B43_NPHY_BBCFG,
				     ~B43_NPHY_BBCFG_RSTRX & 0xFFFF);

		FUNC6(dev);

		/* wl sets useless phy_isspuravoid here */
	}

	FUNC12(dev, B43_NPHY_NDATAT_DUP40, 0x3830);

	if (phy->rev >= 3)
		FUNC7(dev);
}