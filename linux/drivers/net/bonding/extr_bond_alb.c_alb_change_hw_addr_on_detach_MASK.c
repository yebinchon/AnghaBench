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
struct slave {int /*<<< orphan*/  perm_hwaddr; TYPE_1__* dev; } ;
struct bonding {TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*,struct slave*,struct slave*) ; 
 int /*<<< orphan*/  FUNC1 (struct slave*,struct slave*) ; 
 struct slave* FUNC2 (struct bonding*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bonding *bond, struct slave *slave)
{
	int perm_curr_diff;
	int perm_bond_diff;
	struct slave *found_slave;

	perm_curr_diff = !FUNC3(slave->perm_hwaddr,
						  slave->dev->dev_addr);
	perm_bond_diff = !FUNC3(slave->perm_hwaddr,
						  bond->dev->dev_addr);

	if (perm_curr_diff && perm_bond_diff) {
		found_slave = FUNC2(bond, slave->perm_hwaddr);

		if (found_slave) {
			FUNC1(slave, found_slave);
			FUNC0(bond, slave, found_slave);
		}
	}
}