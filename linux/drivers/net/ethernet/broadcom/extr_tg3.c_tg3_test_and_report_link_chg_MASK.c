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
struct tg3 {int link_up; int phy_flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TG3_PHYFLG_MII_SERDES ; 
 int TG3_PHYFLG_PARALLEL_DETECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 

__attribute__((used)) static bool FUNC3(struct tg3 *tp, bool curr_link_up)
{
	if (curr_link_up != tp->link_up) {
		if (curr_link_up) {
			FUNC1(tp->dev);
		} else {
			FUNC0(tp->dev);
			if (tp->phy_flags & TG3_PHYFLG_MII_SERDES)
				tp->phy_flags &= ~TG3_PHYFLG_PARALLEL_DETECT;
		}

		FUNC2(tp);
		return true;
	}

	return false;
}