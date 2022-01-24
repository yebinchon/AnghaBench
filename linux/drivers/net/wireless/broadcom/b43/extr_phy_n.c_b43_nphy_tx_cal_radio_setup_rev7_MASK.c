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
typedef  int u16 ;
struct b43_phy {int radio_rev; struct b43_phy_n* n; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;
struct b43_phy_n {int* tx_rx_cal_radio_saveregs; scalar_t__ use_int_tx_iq_lo_cal; } ;

/* Variables and functions */
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ R2057_TX0_IQCAL_IDAC ; 
 scalar_t__ R2057_TX0_IQCAL_VCM_HG ; 
 scalar_t__ R2057_TX0_TSSIA ; 
 scalar_t__ R2057_TX0_TSSIG ; 
 scalar_t__ R2057_TX0_TSSI_MISC1 ; 
 scalar_t__ R2057_TX0_TSSI_VCM ; 
 scalar_t__ R2057_TX0_TX_SSI_MASTER ; 
 scalar_t__ R2057_TX0_TX_SSI_MUX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43_wldev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;
	u16 *save = nphy->tx_rx_cal_radio_saveregs;
	int core, off;
	u16 r, tmp;

	for (core = 0; core < 2; core++) {
		r = core ? 0x20 : 0;
		off = core * 11;

		save[off + 0] = FUNC1(dev, r + R2057_TX0_TX_SSI_MASTER);
		save[off + 1] = FUNC1(dev, r + R2057_TX0_IQCAL_VCM_HG);
		save[off + 2] = FUNC1(dev, r + R2057_TX0_IQCAL_IDAC);
		save[off + 3] = FUNC1(dev, r + R2057_TX0_TSSI_VCM);
		save[off + 4] = 0;
		save[off + 5] = FUNC1(dev, r + R2057_TX0_TX_SSI_MUX);
		if (phy->radio_rev != 5)
			save[off + 6] = FUNC1(dev, r + R2057_TX0_TSSIA);
		save[off + 7] = FUNC1(dev, r + R2057_TX0_TSSIG);
		save[off + 8] = FUNC1(dev, r + R2057_TX0_TSSI_MISC1);

		if (FUNC0(dev->wl) == NL80211_BAND_5GHZ) {
			FUNC2(dev, r + R2057_TX0_TX_SSI_MASTER, 0xA);
			FUNC2(dev, r + R2057_TX0_IQCAL_VCM_HG, 0x43);
			FUNC2(dev, r + R2057_TX0_IQCAL_IDAC, 0x55);
			FUNC2(dev, r + R2057_TX0_TSSI_VCM, 0);
			FUNC2(dev, r + R2057_TX0_TSSIG, 0);
			if (nphy->use_int_tx_iq_lo_cal) {
				FUNC2(dev, r + R2057_TX0_TX_SSI_MUX, 0x4);
				tmp = true ? 0x31 : 0x21; /* TODO */
				FUNC2(dev, r + R2057_TX0_TSSIA, tmp);
			}
			FUNC2(dev, r + R2057_TX0_TSSI_MISC1, 0x00);
		} else {
			FUNC2(dev, r + R2057_TX0_TX_SSI_MASTER, 0x6);
			FUNC2(dev, r + R2057_TX0_IQCAL_VCM_HG, 0x43);
			FUNC2(dev, r + R2057_TX0_IQCAL_IDAC, 0x55);
			FUNC2(dev, r + R2057_TX0_TSSI_VCM, 0);

			if (phy->radio_rev != 5)
				FUNC2(dev, r + R2057_TX0_TSSIA, 0);
			if (nphy->use_int_tx_iq_lo_cal) {
				FUNC2(dev, r + R2057_TX0_TX_SSI_MUX, 0x6);
				tmp = true ? 0x31 : 0x21; /* TODO */
				FUNC2(dev, r + R2057_TX0_TSSIG, tmp);
			}
			FUNC2(dev, r + R2057_TX0_TSSI_MISC1, 0);
		}
	}
}