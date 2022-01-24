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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_phy_lp {int tx_isolation_med_band; int tx_isolation_low_band; int tx_isolation_hi_band; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev, u32 freq)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	u16 temp[3];
	u16 isolation;

	FUNC1(dev->phy.rev >= 2);

	if (FUNC2(dev->wl) == NL80211_BAND_2GHZ)
		isolation = lpphy->tx_isolation_med_band;
	else if (freq <= 5320)
		isolation = lpphy->tx_isolation_low_band;
	else if (freq <= 5700)
		isolation = lpphy->tx_isolation_med_band;
	else
		isolation = lpphy->tx_isolation_hi_band;

	temp[0] = ((isolation - 26) / 12) << 12;
	temp[1] = temp[0] + 0x1000;
	temp[2] = temp[0] + 0x2000;

	FUNC3(dev, FUNC0(13, 0), 3, temp);
	FUNC3(dev, FUNC0(12, 0), 3, temp);
}