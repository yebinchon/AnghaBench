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
struct bonding {int dummy; } ;
struct bond_opt_value {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bonding*,unsigned int,struct bond_opt_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct bond_opt_value*,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct bonding *bond, unsigned int option, char *buf)
{
	struct bond_opt_value optval;
	int ret;

	if (!FUNC3())
		return FUNC2();
	FUNC1(&optval, buf);
	ret = FUNC0(bond, option, &optval);
	FUNC4();

	return ret;
}