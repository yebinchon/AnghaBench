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
struct slave {int /*<<< orphan*/  notify_work; } ;
struct bonding {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bonding*) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 struct slave* FUNC1 (struct slave*) ; 
 struct bonding* FUNC2 (struct slave*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slave*) ; 

__attribute__((used)) static void FUNC5(struct slave *slave)
{
	struct bonding *bond = FUNC2(slave);

	FUNC3(&slave->notify_work);
	if (FUNC0(bond) == BOND_MODE_8023AD)
		FUNC4(FUNC1(slave));

	FUNC4(slave);
}