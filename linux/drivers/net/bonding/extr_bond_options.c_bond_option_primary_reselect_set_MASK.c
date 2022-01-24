#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  primary_reselect; } ;
struct bonding {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct bond_opt_value {int /*<<< orphan*/  value; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct bonding *bond,
					    const struct bond_opt_value *newval)
{
	FUNC2(bond->dev, "Setting primary_reselect to %s (%llu)\n",
		   newval->string, newval->value);
	bond->params.primary_reselect = newval->value;

	FUNC0();
	FUNC1(bond);
	FUNC3();

	return 0;
}