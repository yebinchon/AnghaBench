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
typedef  int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;
struct b43_phy_n {int rfctrl_intc1_save; int rfctrl_intc2_save; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC1 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC2 ; 
 int NL80211_BAND_5GHZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev, bool enable)
{
	struct b43_phy_n *nphy = dev->phy.n;
	enum nl80211_band band;
	u16 tmp;

	if (!enable) {
		nphy->rfctrl_intc1_save = FUNC1(dev,
						       B43_NPHY_RFCTL_INTC1);
		nphy->rfctrl_intc2_save = FUNC1(dev,
						       B43_NPHY_RFCTL_INTC2);
		band = FUNC0(dev->wl);
		if (dev->phy.rev >= 7) {
			tmp = 0x1480;
		} else if (dev->phy.rev >= 3) {
			if (band == NL80211_BAND_5GHZ)
				tmp = 0x600;
			else
				tmp = 0x480;
		} else {
			if (band == NL80211_BAND_5GHZ)
				tmp = 0x180;
			else
				tmp = 0x120;
		}
		FUNC2(dev, B43_NPHY_RFCTL_INTC1, tmp);
		FUNC2(dev, B43_NPHY_RFCTL_INTC2, tmp);
	} else {
		FUNC2(dev, B43_NPHY_RFCTL_INTC1,
				nphy->rfctrl_intc1_save);
		FUNC2(dev, B43_NPHY_RFCTL_INTC2,
				nphy->rfctrl_intc2_save);
	}
}