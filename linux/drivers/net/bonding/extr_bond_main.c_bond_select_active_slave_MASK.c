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
struct slave {int dummy; } ;
struct bonding {int /*<<< orphan*/  dev; int /*<<< orphan*/  curr_active_slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,struct slave*) ; 
 struct slave* FUNC2 (struct bonding*) ; 
 int FUNC3 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct slave* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct bonding *bond)
{
	struct slave *best_slave;
	int rv;

	FUNC0();

	best_slave = FUNC2(bond);
	if (best_slave != FUNC6(bond->curr_active_slave)) {
		FUNC1(bond, best_slave);
		rv = FUNC3(bond);
		if (!rv)
			return;

		if (FUNC5(bond->dev))
			FUNC4(bond->dev, "active interface up!\n");
		else
			FUNC4(bond->dev, "now running without any active interface!\n");
	}
}