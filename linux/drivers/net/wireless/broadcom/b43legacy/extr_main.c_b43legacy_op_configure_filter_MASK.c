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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {unsigned int filter_flags; int /*<<< orphan*/  irq_lock; struct b43legacy_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_BCN_PRBRESP_PROMISC ; 
 unsigned int FIF_CONTROL ; 
 unsigned int FIF_FCSFAIL ; 
 unsigned int FIF_OTHER_BSS ; 
 unsigned int FIF_PLCPFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 scalar_t__ FUNC1 (struct b43legacy_wldev*) ; 
 struct b43legacy_wl* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					  unsigned int changed,
					  unsigned int *fflags,u64 multicast)
{
	struct b43legacy_wl *wl = FUNC2(hw);
	struct b43legacy_wldev *dev = wl->current_dev;
	unsigned long flags;

	if (!dev) {
		*fflags = 0;
		return;
	}

	FUNC3(&wl->irq_lock, flags);
	*fflags &= FIF_ALLMULTI |
		  FIF_FCSFAIL |
		  FIF_PLCPFAIL |
		  FIF_CONTROL |
		  FIF_OTHER_BSS |
		  FIF_BCN_PRBRESP_PROMISC;

	changed &= FIF_ALLMULTI |
		   FIF_FCSFAIL |
		   FIF_PLCPFAIL |
		   FIF_CONTROL |
		   FIF_OTHER_BSS |
		   FIF_BCN_PRBRESP_PROMISC;

	wl->filter_flags = *fflags;

	if (changed && FUNC1(dev) >= B43legacy_STAT_INITIALIZED)
		FUNC0(dev);
	FUNC4(&wl->irq_lock, flags);
}