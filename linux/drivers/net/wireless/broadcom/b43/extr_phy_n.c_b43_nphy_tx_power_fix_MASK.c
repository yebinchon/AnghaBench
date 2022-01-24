#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ssb_sprom {int revision; int* txpid2g; int* txpid5gl; int* txpid5g; int* txpid5gh; } ;
struct b43_phy {int rev; TYPE_3__* chandef; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int /*<<< orphan*/  wl; TYPE_1__* dev; } ;
struct b43_phy_n {scalar_t__ hang_avoid; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct TYPE_5__ {int center_freq; } ;
struct TYPE_4__ {struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_AFECTL_DACGAIN1 ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_DACGAIN2 ; 
 int B43_NPHY_AFECTL_OVER ; 
 int B43_NPHY_AFECTL_OVER1 ; 
 int /*<<< orphan*/  B43_NPHY_BPHY_CTL2 ; 
 int /*<<< orphan*/  B43_NPHY_BPHY_CTL2_LUT ; 
 int B43_NPHY_PAPD_EN0 ; 
 int B43_NPHY_PAPD_EN1 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (struct b43_wldev*) ; 
 scalar_t__ FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;
	struct ssb_sprom *sprom = dev->dev->bus_sprom;

	u8 txpi[2], bbmult, i;
	u16 tmp, radio_gain, dac_gain;
	u16 freq = phy->chandef->chan->center_freq;
	u32 txgain;
	/* u32 gaintbl; rev3+ */

	if (nphy->hang_avoid)
		FUNC5(dev, 1);

	/* TODO: rev19+ */
	if (dev->phy.rev >= 7) {
		txpi[0] = txpi[1] = 30;
	} else if (dev->phy.rev >= 3) {
		txpi[0] = 40;
		txpi[1] = 40;
	} else if (sprom->revision < 4) {
		txpi[0] = 72;
		txpi[1] = 72;
	} else {
		if (FUNC2(dev->wl) == NL80211_BAND_2GHZ) {
			txpi[0] = sprom->txpid2g[0];
			txpi[1] = sprom->txpid2g[1];
		} else if (freq >= 4900 && freq < 5100) {
			txpi[0] = sprom->txpid5gl[0];
			txpi[1] = sprom->txpid5gl[1];
		} else if (freq >= 5100 && freq < 5500) {
			txpi[0] = sprom->txpid5g[0];
			txpi[1] = sprom->txpid5g[1];
		} else if (freq >= 5500) {
			txpi[0] = sprom->txpid5gh[0];
			txpi[1] = sprom->txpid5gh[1];
		} else {
			txpi[0] = 91;
			txpi[1] = 91;
		}
	}
	if (dev->phy.rev < 7 &&
	    (txpi[0] < 40 || txpi[0] > 100 || txpi[1] < 40 || txpi[1] > 100))
		txpi[0] = txpi[1] = 91;

	/*
	for (i = 0; i < 2; i++) {
		nphy->txpwrindex[i].index_internal = txpi[i];
		nphy->txpwrindex[i].index_internal_save = txpi[i];
	}
	*/

	for (i = 0; i < 2; i++) {
		const u32 *table = FUNC3(dev);

		if (!table)
			break;
		txgain = *(table + txpi[i]);

		if (dev->phy.rev >= 3)
			radio_gain = (txgain >> 16) & 0x1FFFF;
		else
			radio_gain = (txgain >> 16) & 0x1FFF;

		if (dev->phy.rev >= 7)
			dac_gain = (txgain >> 8) & 0x7;
		else
			dac_gain = (txgain >> 8) & 0x3F;
		bbmult = txgain & 0xFF;

		if (dev->phy.rev >= 3) {
			if (i == 0)
				FUNC10(dev, B43_NPHY_AFECTL_OVER1, 0x0100);
			else
				FUNC10(dev, B43_NPHY_AFECTL_OVER, 0x0100);
		} else {
			FUNC10(dev, B43_NPHY_AFECTL_OVER, 0x4000);
		}

		if (i == 0)
			FUNC11(dev, B43_NPHY_AFECTL_DACGAIN1, dac_gain);
		else
			FUNC11(dev, B43_NPHY_AFECTL_DACGAIN2, dac_gain);

		FUNC7(dev, FUNC0(0x7, 0x110 + i), radio_gain);

		tmp = FUNC6(dev, FUNC0(0xF, 0x57));
		if (i == 0)
			tmp = (tmp & 0x00FF) | (bbmult << 8);
		else
			tmp = (tmp & 0xFF00) | bbmult;
		FUNC7(dev, FUNC0(0xF, 0x57), tmp);

		if (FUNC4(dev)) {
			u32 tmp32;
			u16 reg = (i == 0) ?
				B43_NPHY_PAPD_EN0 : B43_NPHY_PAPD_EN1;
			tmp32 = FUNC6(dev, FUNC1(26 + i,
							      576 + txpi[i]));
			FUNC9(dev, reg, 0xE00F, (u32) tmp32 << 4);
			FUNC10(dev, reg, 0x4);
		}
	}

	FUNC8(dev, B43_NPHY_BPHY_CTL2, ~B43_NPHY_BPHY_CTL2_LUT);

	if (nphy->hang_avoid)
		FUNC5(dev, 0);
}