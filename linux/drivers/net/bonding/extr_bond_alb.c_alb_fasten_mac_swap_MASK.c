#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slave {TYPE_2__* dev; } ;
struct TYPE_3__ {scalar_t__ rlb_enabled; } ;
struct bonding {TYPE_1__ alb_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct slave*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct slave*) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*,struct slave*) ; 
 int /*<<< orphan*/  FUNC4 (struct bonding*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bonding *bond, struct slave *slave1,
				struct slave *slave2)
{
	int slaves_state_differ = (FUNC2(slave1) != FUNC2(slave2));
	struct slave *disabled_slave = NULL;

	FUNC0();

	/* fasten the change in the switch */
	if (FUNC2(slave1)) {
		FUNC1(slave1, slave1->dev->dev_addr, false);
		if (bond->alb_info.rlb_enabled) {
			/* inform the clients that the mac address
			 * has changed
			 */
			FUNC3(bond, slave1);
		}
	} else {
		disabled_slave = slave1;
	}

	if (FUNC2(slave2)) {
		FUNC1(slave2, slave2->dev->dev_addr, false);
		if (bond->alb_info.rlb_enabled) {
			/* inform the clients that the mac address
			 * has changed
			 */
			FUNC3(bond, slave2);
		}
	} else {
		disabled_slave = slave2;
	}

	if (bond->alb_info.rlb_enabled && slaves_state_differ) {
		/* A disabled slave was assigned an active mac addr */
		FUNC4(bond,
						  disabled_slave->dev->dev_addr);
	}
}