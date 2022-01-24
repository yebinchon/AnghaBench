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
struct phy_setting {scalar_t__ bit; int speed; int duplex; } ;

/* Variables and functions */
 int FUNC0 (struct phy_setting*) ; 
 scalar_t__ __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 struct phy_setting* settings ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned long const*) ; 

const struct phy_setting *
FUNC2(int speed, int duplex, const unsigned long *mask, bool exact)
{
	const struct phy_setting *p, *match = NULL, *last = NULL;
	int i;

	for (i = 0, p = settings; i < FUNC0(settings); i++, p++) {
		if (p->bit < __ETHTOOL_LINK_MODE_MASK_NBITS &&
		    FUNC1(p->bit, mask)) {
			last = p;
			if (p->speed == speed && p->duplex == duplex) {
				/* Exact match for speed and duplex */
				match = p;
				break;
			} else if (!exact) {
				if (!match && p->speed <= speed)
					/* Candidate */
					match = p;

				if (p->speed < speed)
					break;
			}
		}
	}

	if (!match && !exact)
		match = last;

	return match;
}