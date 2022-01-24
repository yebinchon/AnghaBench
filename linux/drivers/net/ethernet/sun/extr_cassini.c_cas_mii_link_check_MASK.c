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
struct cas {scalar_t__ lstate; int link_cntl; int link_fcntl; int timer_ticks; int /*<<< orphan*/  dev; scalar_t__ opened; int /*<<< orphan*/  link_transition; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int const BMSR_LSTATUS ; 
 int /*<<< orphan*/  LINK_TRANSITION_LINK_CONFIG ; 
 int /*<<< orphan*/  LINK_TRANSITION_LINK_DOWN ; 
 int /*<<< orphan*/  LINK_TRANSITION_LINK_UP ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct cas*) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,int) ; 
 int FUNC2 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ link_down ; 
 scalar_t__ link_force_ret ; 
 scalar_t__ link_force_try ; 
 scalar_t__ link_up ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct cas *cp, const u16 bmsr)
{
	int restart;

	if (bmsr & BMSR_LSTATUS) {
		/* Ok, here we got a link. If we had it due to a forced
		 * fallback, and we were configured for autoneg, we
		 * retry a short autoneg pass. If you know your hub is
		 * broken, use ethtool ;)
		 */
		if ((cp->lstate == link_force_try) &&
		    (cp->link_cntl & BMCR_ANENABLE)) {
			cp->lstate = link_force_ret;
			cp->link_transition = LINK_TRANSITION_LINK_CONFIG;
			FUNC1(cp, 0);
			cp->link_fcntl = FUNC2(cp, MII_BMCR);
			cp->timer_ticks = 5;
			if (cp->opened)
				FUNC7(cp, link, cp->dev,
					   "Got link after fallback, retrying autoneg once...\n");
			FUNC3(cp, MII_BMCR,
				      cp->link_fcntl | BMCR_ANENABLE |
				      BMCR_ANRESTART);
			FUNC1(cp, 1);

		} else if (cp->lstate != link_up) {
			cp->lstate = link_up;
			cp->link_transition = LINK_TRANSITION_LINK_UP;

			if (cp->opened) {
				FUNC4(cp);
				FUNC6(cp->dev);
			}
		}
		return 0;
	}

	/* link not up. if the link was previously up, we restart the
	 * whole process
	 */
	restart = 0;
	if (cp->lstate == link_up) {
		cp->lstate = link_down;
		cp->link_transition = LINK_TRANSITION_LINK_DOWN;

		FUNC5(cp->dev);
		if (cp->opened)
			FUNC7(cp, link, cp->dev, "Link down\n");
		restart = 1;

	} else if (++cp->timer_ticks > 10)
		FUNC0(cp);

	return restart;
}