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
struct bond_params {int /*<<< orphan*/  mode; } ;
struct bonding {int /*<<< orphan*/  dev; struct bond_params params; } ;
struct bond_option {int /*<<< orphan*/  name; int /*<<< orphan*/  unsuppmodes; } ;
struct bond_opt_value {int /*<<< orphan*/  value; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_OPT_MODE ; 
 struct bond_opt_value* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bonding *bond,
			       const struct bond_option *opt)
{
	const struct bond_opt_value *modeval;
	struct bond_params *params;

	params = &bond->params;
	modeval = FUNC0(BOND_OPT_MODE, params->mode);
	if (FUNC2(params->mode, &opt->unsuppmodes))
		FUNC1(bond->dev, "option %s: mode dependency failed, not supported in mode %s(%llu)\n",
			   opt->name, modeval->string, modeval->value);
}