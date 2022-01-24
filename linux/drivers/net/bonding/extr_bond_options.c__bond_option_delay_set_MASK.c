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
struct TYPE_2__ {int miimon; } ;
struct bonding {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct bond_opt_value {int value; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct bonding *bond,
				  const struct bond_opt_value *newval,
				  const char *name,
				  int *target)
{
	int value = newval->value;

	if (!bond->params.miimon) {
		FUNC1(bond->dev, "Unable to set %s as MII monitoring is disabled\n",
			   name);
		return -EPERM;
	}
	if ((value % bond->params.miimon) != 0) {
		FUNC2(bond->dev,
			    "%s (%d) is not a multiple of miimon (%d), value rounded to %d ms\n",
			    name,
			    value, bond->params.miimon,
			    (value / bond->params.miimon) *
			    bond->params.miimon);
	}
	*target = value / bond->params.miimon;
	FUNC0(bond->dev, "Setting %s to %d\n",
		   name,
		   *target * bond->params.miimon);

	return 0;
}