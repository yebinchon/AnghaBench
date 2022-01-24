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
typedef  int /*<<< orphan*/  u16 ;
struct b43_phy {int rev; TYPE_3__* chandef; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int /*<<< orphan*/  wl; } ;
struct b43_phy_n_iq_comp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * txcal_coeffs_5G; int /*<<< orphan*/ * txcal_radio_regs_5G; struct b43_phy_n_iq_comp rxcal_coeffs_5G; int /*<<< orphan*/ * txcal_coeffs_2G; int /*<<< orphan*/ * txcal_radio_regs_2G; struct b43_phy_n_iq_comp rxcal_coeffs_2G; } ;
struct b43_chanspec {int /*<<< orphan*/  channel_type; int /*<<< orphan*/  center_freq; } ;
struct b43_phy_n {scalar_t__ hang_avoid; TYPE_1__ cal_cache; struct b43_chanspec iqcal_chanspec_5G; struct b43_chanspec iqcal_chanspec_2G; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 int R2057_TX0_LOFT_COARSE_I ; 
 int R2057_TX0_LOFT_COARSE_Q ; 
 int R2057_TX0_LOFT_FINE_I ; 
 int R2057_TX0_LOFT_FINE_Q ; 
 int R2057_TX1_LOFT_COARSE_I ; 
 int R2057_TX1_LOFT_COARSE_Q ; 
 int R2057_TX1_LOFT_FINE_I ; 
 int R2057_TX1_LOFT_FINE_Q ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,struct b43_phy_n_iq_comp*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;

	struct b43_phy_n_iq_comp *rxcal_coeffs = NULL;
	u16 *txcal_radio_regs = NULL;
	struct b43_chanspec *iqcal_chanspec;
	u16 *table = NULL;

	if (nphy->hang_avoid)
		FUNC3(dev, 1);

	if (FUNC1(dev->wl) == NL80211_BAND_2GHZ) {
		rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_2G;
		txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_2G;
		iqcal_chanspec = &nphy->iqcal_chanspec_2G;
		table = nphy->cal_cache.txcal_coeffs_2G;
	} else {
		rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_5G;
		txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_5G;
		iqcal_chanspec = &nphy->iqcal_chanspec_5G;
		table = nphy->cal_cache.txcal_coeffs_5G;
	}

	FUNC2(dev, false, rxcal_coeffs);
	/* TODO use some definitions */
	if (phy->rev >= 19) {
		/* TODO */
	} else if (phy->rev >= 7) {
		txcal_radio_regs[0] = FUNC5(dev,
						     R2057_TX0_LOFT_FINE_I);
		txcal_radio_regs[1] = FUNC5(dev,
						     R2057_TX0_LOFT_FINE_Q);
		txcal_radio_regs[4] = FUNC5(dev,
						     R2057_TX0_LOFT_COARSE_I);
		txcal_radio_regs[5] = FUNC5(dev,
						     R2057_TX0_LOFT_COARSE_Q);
		txcal_radio_regs[2] = FUNC5(dev,
						     R2057_TX1_LOFT_FINE_I);
		txcal_radio_regs[3] = FUNC5(dev,
						     R2057_TX1_LOFT_FINE_Q);
		txcal_radio_regs[6] = FUNC5(dev,
						     R2057_TX1_LOFT_COARSE_I);
		txcal_radio_regs[7] = FUNC5(dev,
						     R2057_TX1_LOFT_COARSE_Q);
	} else if (phy->rev >= 3) {
		txcal_radio_regs[0] = FUNC5(dev, 0x2021);
		txcal_radio_regs[1] = FUNC5(dev, 0x2022);
		txcal_radio_regs[2] = FUNC5(dev, 0x3021);
		txcal_radio_regs[3] = FUNC5(dev, 0x3022);
		txcal_radio_regs[4] = FUNC5(dev, 0x2023);
		txcal_radio_regs[5] = FUNC5(dev, 0x2024);
		txcal_radio_regs[6] = FUNC5(dev, 0x3023);
		txcal_radio_regs[7] = FUNC5(dev, 0x3024);
	} else {
		txcal_radio_regs[0] = FUNC5(dev, 0x8B);
		txcal_radio_regs[1] = FUNC5(dev, 0xBA);
		txcal_radio_regs[2] = FUNC5(dev, 0x8D);
		txcal_radio_regs[3] = FUNC5(dev, 0xBC);
	}
	iqcal_chanspec->center_freq = dev->phy.chandef->chan->center_freq;
	iqcal_chanspec->channel_type =
				FUNC6(dev->phy.chandef);
	FUNC4(dev, FUNC0(15, 80), 8, table);

	if (nphy->hang_avoid)
		FUNC3(dev, 0);
}