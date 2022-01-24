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
struct TYPE_3__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_2__* dev; TYPE_1__ phy; } ;
struct b43_phy_ht {int tx_pwr_ctl; } ;
struct TYPE_4__ {scalar_t__ bus_type; } ;

/* Variables and functions */
 scalar_t__ B43_BUS_BCMA ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  B43_HTTAB_1A_C0_LATE_SIZE ; 
 int FUNC2 (int) ; 
 int B43_PHY_HT_AFE_C1_OVER ; 
 int B43_PHY_HT_AFE_C2_OVER ; 
 int B43_PHY_HT_AFE_C3_OVER ; 
 int B43_PHY_HT_BBCFG ; 
 int B43_PHY_HT_BBCFG_RSTCCA ; 
 int /*<<< orphan*/  B43_PHY_HT_CLASS_CTL_CCK_EN ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_TRIG_RST2RX ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_TRIG_RX2TX ; 
 int FUNC3 (int) ; 
 int EOPNOTSUPP ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b43_httab_0x1a_0xc0_late ; 
 int FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC19 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC21 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC22 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC23 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC24 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct b43_wldev*,int,int,int) ; 
 int FUNC26 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC30(struct b43_wldev *dev)
{
	struct b43_phy_ht *phy_ht = dev->phy.ht;
	u16 tmp;
	u16 clip_state[3];
	bool saved_tx_pwr_ctl;

	if (dev->dev->bus_type != B43_BUS_BCMA) {
		FUNC29(dev->wl, "HT-PHY is supported only on BCMA bus!\n");
		return -EOPNOTSUPP;
	}

	FUNC17(dev);

	FUNC24(dev, 0x0be, ~0x2);
	FUNC27(dev, 0x23f, 0x7ff);
	FUNC27(dev, 0x240, 0x7ff);
	FUNC27(dev, 0x241, 0x7ff);

	FUNC23(dev);

	FUNC24(dev, FUNC2(0), ~0x3);

	FUNC28(dev, B43_PHY_HT_AFE_C1_OVER, 0);
	FUNC28(dev, B43_PHY_HT_AFE_C2_OVER, 0);
	FUNC28(dev, B43_PHY_HT_AFE_C3_OVER, 0);

	FUNC28(dev, FUNC2(0x103), 0x20);
	FUNC28(dev, FUNC2(0x101), 0x20);
	FUNC28(dev, 0x20d, 0xb8);
	FUNC28(dev, FUNC2(0x14f), 0xc8);
	FUNC28(dev, 0x70, 0x50);
	FUNC28(dev, 0x1ff, 0x30);

	if (0) /* TODO: condition */
		; /* TODO: PHY op on reg 0x217 */

	if (FUNC4(dev->wl) == NL80211_BAND_5GHZ)
		FUNC13(dev, B43_PHY_HT_CLASS_CTL_CCK_EN, 0);
	else
		FUNC13(dev, B43_PHY_HT_CLASS_CTL_CCK_EN,
				      B43_PHY_HT_CLASS_CTL_CCK_EN);

	FUNC27(dev, 0xb1, 0x91);
	FUNC28(dev, 0x32f, 0x0003);
	FUNC28(dev, 0x077, 0x0010);
	FUNC28(dev, 0x0b4, 0x0258);
	FUNC24(dev, 0x17e, ~0x4000);

	FUNC28(dev, 0x0b9, 0x0072);

	FUNC8(dev, FUNC0(7, 0x14e), 2, 0x010f, 0x010f);
	FUNC8(dev, FUNC0(7, 0x15e), 2, 0x010f, 0x010f);
	FUNC8(dev, FUNC0(7, 0x16e), 2, 0x010f, 0x010f);

	FUNC11(dev);

	FUNC8(dev, FUNC0(7, 0x130), 9, 0x777, 0x111, 0x111,
			    0x777, 0x111, 0x111, 0x777, 0x111, 0x111);

	FUNC6(dev, FUNC0(7, 0x120), 0x0777);
	FUNC6(dev, FUNC0(7, 0x124), 0x0777);

	FUNC6(dev, FUNC0(8, 0x00), 0x02);
	FUNC6(dev, FUNC0(8, 0x10), 0x02);
	FUNC6(dev, FUNC0(8, 0x20), 0x02);

	FUNC8(dev, FUNC0(8, 0x08), 4,
			    0x8e, 0x96, 0x96, 0x96);
	FUNC8(dev, FUNC0(8, 0x18), 4,
			    0x8f, 0x9f, 0x9f, 0x9f);
	FUNC8(dev, FUNC0(8, 0x28), 4,
			    0x8f, 0x9f, 0x9f, 0x9f);

	FUNC8(dev, FUNC0(8, 0x0c), 4, 0x2, 0x2, 0x2, 0x2);
	FUNC8(dev, FUNC0(8, 0x1c), 4, 0x2, 0x2, 0x2, 0x2);
	FUNC8(dev, FUNC0(8, 0x2c), 4, 0x2, 0x2, 0x2, 0x2);

	FUNC25(dev, 0x0280, 0xff00, 0x3e);
	FUNC25(dev, 0x0283, 0xff00, 0x3e);
	FUNC25(dev, FUNC3(0x0141), 0xff00, 0x46);
	FUNC25(dev, 0x0283, 0xff00, 0x40);

	FUNC8(dev, FUNC0(00, 0x8), 4,
			    0x09, 0x0e, 0x13, 0x18);
	FUNC8(dev, FUNC0(01, 0x8), 4,
			    0x09, 0x0e, 0x13, 0x18);
	/* TODO: Did wl mean 2 instead of 40? */
	FUNC8(dev, FUNC0(40, 0x8), 4,
			    0x09, 0x0e, 0x13, 0x18);

	FUNC25(dev, FUNC3(0x24), 0x3f, 0xd);
	FUNC25(dev, FUNC3(0x64), 0x3f, 0xd);
	FUNC25(dev, FUNC3(0xa4), 0x3f, 0xd);

	FUNC27(dev, FUNC2(0x060), 0x1);
	FUNC27(dev, FUNC2(0x064), 0x1);
	FUNC27(dev, FUNC2(0x080), 0x1);
	FUNC27(dev, FUNC2(0x084), 0x1);

	/* Copy some tables entries */
	tmp = FUNC5(dev, FUNC0(7, 0x144));
	FUNC6(dev, FUNC0(7, 0x14a), tmp);
	tmp = FUNC5(dev, FUNC0(7, 0x154));
	FUNC6(dev, FUNC0(7, 0x15a), tmp);
	tmp = FUNC5(dev, FUNC0(7, 0x164));
	FUNC6(dev, FUNC0(7, 0x16a), tmp);

	/* Reset CCA */
	FUNC10(dev, true);
	tmp = FUNC26(dev, B43_PHY_HT_BBCFG);
	FUNC28(dev, B43_PHY_HT_BBCFG, tmp | B43_PHY_HT_BBCFG_RSTCCA);
	FUNC28(dev, B43_PHY_HT_BBCFG, tmp & ~B43_PHY_HT_BBCFG_RSTCCA);
	FUNC10(dev, false);

	FUNC9(dev, true);

	FUNC15(dev, false);
	FUNC14(dev, B43_PHY_HT_RF_SEQ_TRIG_RX2TX);
	FUNC14(dev, B43_PHY_HT_RF_SEQ_TRIG_RST2RX);
	FUNC15(dev, true);

	/* TODO: Should we restore it? Or store it in global PHY info? */
	FUNC13(dev, 0, 0);
	FUNC16(dev, clip_state);

	if (FUNC4(dev->wl) == NL80211_BAND_2GHZ)
		FUNC12(dev);

	FUNC7(dev, FUNC1(0x1a, 0xc0),
			B43_HTTAB_1A_C0_LATE_SIZE, b43_httab_0x1a_0xc0_late);

	saved_tx_pwr_ctl = phy_ht->tx_pwr_ctl;
	FUNC22(dev);
	FUNC19(dev, false);
	FUNC20(dev);
	FUNC21(dev);
	FUNC18(dev);
	FUNC19(dev, saved_tx_pwr_ctl);

	return 0;
}