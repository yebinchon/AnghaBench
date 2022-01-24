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
typedef  int u8 ;
typedef  int u16 ;
struct b43_wldev {int /*<<< orphan*/  wl; } ;
typedef  enum n_intc_override { ____Placeholder_n_intc_override } n_intc_override ;

/* Variables and functions */
 int B43_NPHY_RFCTL_INTC1 ; 
 int B43_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  B43_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
#define  N_INTC_OVERRIDE_EXT_LNA_GAIN 132 
#define  N_INTC_OVERRIDE_EXT_LNA_PU 131 
#define  N_INTC_OVERRIDE_OFF 130 
#define  N_INTC_OVERRIDE_PA 129 
#define  N_INTC_OVERRIDE_TRSW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev,
					       enum n_intc_override intc_override,
					       u16 value, u8 core_sel)
{
	u16 reg, tmp, tmp2, val;
	int core;

	/* TODO: What about rev19+? Revs 3+ and 7+ are a bit similar */

	for (core = 0; core < 2; core++) {
		if ((core_sel == 1 && core != 0) ||
		    (core_sel == 2 && core != 1))
			continue;

		reg = (core == 0) ? B43_NPHY_RFCTL_INTC1 : B43_NPHY_RFCTL_INTC2;

		switch (intc_override) {
		case N_INTC_OVERRIDE_OFF:
			FUNC5(dev, reg, 0);
			FUNC2(dev, 0x2ff, ~0x2000);
			FUNC1(dev, B43_RFSEQ_RESET2RX);
			break;
		case N_INTC_OVERRIDE_TRSW:
			FUNC3(dev, reg, ~0xC0, value << 6);
			FUNC4(dev, reg, 0x400);

			FUNC2(dev, 0x2ff, ~0xC000 & 0xFFFF);
			FUNC4(dev, 0x2ff, 0x2000);
			FUNC4(dev, 0x2ff, 0x0001);
			break;
		case N_INTC_OVERRIDE_PA:
			tmp = 0x0030;
			if (FUNC0(dev->wl) == NL80211_BAND_5GHZ)
				val = value << 5;
			else
				val = value << 4;
			FUNC3(dev, reg, ~tmp, val);
			FUNC4(dev, reg, 0x1000);
			break;
		case N_INTC_OVERRIDE_EXT_LNA_PU:
			if (FUNC0(dev->wl) == NL80211_BAND_5GHZ) {
				tmp = 0x0001;
				tmp2 = 0x0004;
				val = value;
			} else {
				tmp = 0x0004;
				tmp2 = 0x0001;
				val = value << 2;
			}
			FUNC3(dev, reg, ~tmp, val);
			FUNC2(dev, reg, ~tmp2);
			break;
		case N_INTC_OVERRIDE_EXT_LNA_GAIN:
			if (FUNC0(dev->wl) == NL80211_BAND_5GHZ) {
				tmp = 0x0002;
				tmp2 = 0x0008;
				val = value << 1;
			} else {
				tmp = 0x0008;
				tmp2 = 0x0002;
				val = value << 3;
			}
			FUNC3(dev, reg, ~tmp, val);
			FUNC2(dev, reg, ~tmp2);
			break;
		}
	}
}