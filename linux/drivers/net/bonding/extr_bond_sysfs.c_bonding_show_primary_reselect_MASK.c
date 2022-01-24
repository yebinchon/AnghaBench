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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int primary_reselect; } ;
struct bonding {TYPE_1__ params; } ;
struct bond_opt_value {char* string; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_OPT_PRIMARY_RESELECT ; 
 struct bond_opt_value* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int) ; 
 struct bonding* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d,
					     struct device_attribute *attr,
					     char *buf)
{
	struct bonding *bond = FUNC2(d);
	const struct bond_opt_value *val;

	val = FUNC0(BOND_OPT_PRIMARY_RESELECT,
			       bond->params.primary_reselect);

	return FUNC1(buf, "%s %d\n",
		       val->string, bond->params.primary_reselect);
}