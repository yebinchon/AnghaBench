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
struct b43_wldev {scalar_t__ mac_suspended; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_DEBUG ; 
 scalar_t__ B43_STAT_INITIALIZED ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct b43_wldev *dev)
{
	if (!B43_DEBUG)
		return;
	if ((FUNC0(dev) >= B43_STAT_INITIALIZED) &&
	    (dev->mac_suspended <= 0)) {
		FUNC1(dev->wl, "PHY/RADIO register access with "
		       "enabled MAC.\n");
		FUNC2();
	}
}