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
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;
struct b43_phy_n {int lpf_bw_overrode_for_sample_play; int bb_mult_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  B43_NPHY_REV7_RF_CTL_OVER3 ; 
 int /*<<< orphan*/  B43_NPHY_REV7_RF_CTL_OVER4 ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQMODE ; 
 int B43_NPHY_RFSEQMODE_CAOVER ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQST ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_CMD ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_DEPCNT ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_LOOPCNT ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_WAITCNT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct b43_wldev *dev, u16 samps, u16 loops,
				 u16 wait, bool iqmode, bool dac_test,
				 bool modify_bbmult)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;
	int i;
	u16 seq_mode;
	u32 tmp;

	FUNC5(dev, true);

	if (phy->rev >= 7) {
		bool lpf_bw3, lpf_bw4;

		lpf_bw3 = FUNC9(dev, B43_NPHY_REV7_RF_CTL_OVER3) & 0x80;
		lpf_bw4 = FUNC9(dev, B43_NPHY_REV7_RF_CTL_OVER4) & 0x80;

		if (lpf_bw3 || lpf_bw4) {
			/* TODO */
		} else {
			u16 value = FUNC2(dev, 0);
			if (phy->rev >= 19)
				FUNC3(dev, 0x80, value,
							       0, false, 1);
			else
				FUNC4(dev, 0x80, value,
							      0, false, 1);
			nphy->lpf_bw_overrode_for_sample_play = true;
		}
	}

	if ((nphy->bb_mult_save & 0x80000000) == 0) {
		tmp = FUNC6(dev, FUNC0(15, 87));
		nphy->bb_mult_save = (tmp & 0xFFFF) | 0x80000000;
	}

	if (modify_bbmult) {
		tmp = !FUNC1(dev) ? 0x6464 : 0x4747;
		FUNC7(dev, FUNC0(15, 87), tmp);
	}

	FUNC11(dev, B43_NPHY_SAMP_DEPCNT, (samps - 1));

	if (loops != 0xFFFF)
		FUNC11(dev, B43_NPHY_SAMP_LOOPCNT, (loops - 1));
	else
		FUNC11(dev, B43_NPHY_SAMP_LOOPCNT, loops);

	FUNC11(dev, B43_NPHY_SAMP_WAITCNT, wait);

	seq_mode = FUNC9(dev, B43_NPHY_RFSEQMODE);

	FUNC10(dev, B43_NPHY_RFSEQMODE, B43_NPHY_RFSEQMODE_CAOVER);
	if (iqmode) {
		FUNC8(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);
		FUNC10(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x8000);
	} else {
		tmp = dac_test ? 5 : 1;
		FUNC11(dev, B43_NPHY_SAMP_CMD, tmp);
	}
	for (i = 0; i < 100; i++) {
		if (!(FUNC9(dev, B43_NPHY_RFSEQST) & 1)) {
			i = 0;
			break;
		}
		FUNC13(10);
	}
	if (i)
		FUNC12(dev->wl, "run samples timeout\n");

	FUNC11(dev, B43_NPHY_RFSEQMODE, seq_mode);

	FUNC5(dev, false);
}