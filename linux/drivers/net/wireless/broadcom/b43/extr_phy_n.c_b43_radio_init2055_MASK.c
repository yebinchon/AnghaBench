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
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 scalar_t__ FUNC4 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	FUNC3(dev);
	if (FUNC4(dev) < B43_STAT_INITIALIZED) {
		/* Follow wl, not specs. Do not force uploading all regs */
		FUNC0(dev, 0, 0);
	} else {
		bool ghz5 = FUNC1(dev->wl) == NL80211_BAND_5GHZ;
		FUNC0(dev, ghz5, 0);
	}
	FUNC2(dev);
}