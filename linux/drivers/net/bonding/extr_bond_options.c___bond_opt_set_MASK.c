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
struct bond_option {int (* set ) (struct bonding*,struct bond_opt_value const*) ;} ;
struct bond_opt_value {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct bonding*,struct bond_option const*) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*,struct bond_option const*,int,struct bond_opt_value*) ; 
 struct bond_option* FUNC4 (unsigned int) ; 
 struct bond_opt_value* FUNC5 (struct bond_option const*,struct bond_opt_value*) ; 
 int FUNC6 (struct bonding*,struct bond_opt_value const*) ; 

int FUNC7(struct bonding *bond,
		   unsigned int option, struct bond_opt_value *val)
{
	const struct bond_opt_value *retval = NULL;
	const struct bond_option *opt;
	int ret = -ENOENT;

	FUNC0();

	opt = FUNC4(option);
	if (FUNC1(!val) || FUNC1(!opt))
		goto out;
	ret = FUNC2(bond, opt);
	if (ret)
		goto out;
	retval = FUNC5(opt, val);
	if (!retval) {
		ret = -EINVAL;
		goto out;
	}
	ret = opt->set(bond, retval);
out:
	if (ret)
		FUNC3(bond, opt, ret, val);

	return ret;
}