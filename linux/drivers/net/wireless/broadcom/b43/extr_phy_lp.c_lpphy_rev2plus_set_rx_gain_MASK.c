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
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_AFE_DDFS ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev, u32 gain)
{
	u16 low_gain = gain & 0xFFFF;
	u16 high_gain = (gain >> 16) & 0xF;
	u16 ext_lna = (gain >> 21) & 0x1;
	u16 trsw = ~(gain >> 20) & 0x1;
	u16 tmp;

	FUNC2(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFFE, trsw);
	FUNC2(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
			0xFDFF, ext_lna << 9);
	FUNC2(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
			0xFBFF, ext_lna << 10);
	FUNC3(dev, B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, low_gain);
	FUNC2(dev, B43_LPPHY_AFE_DDFS, 0xFFF0, high_gain);
	if (FUNC1(dev->wl) == NL80211_BAND_2GHZ) {
		tmp = (gain >> 2) & 0x3;
		FUNC2(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
				0xE7FF, tmp<<11);
		FUNC2(dev, FUNC0(0xE6), 0xFFE7, tmp << 3);
	}
}