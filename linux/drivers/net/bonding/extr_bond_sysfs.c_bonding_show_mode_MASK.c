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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int dummy; } ;
struct bond_opt_value {char* string; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  BOND_OPT_MODE ; 
 struct bond_opt_value* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 struct bonding* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d,
				 struct device_attribute *attr, char *buf)
{
	struct bonding *bond = FUNC3(d);
	const struct bond_opt_value *val;

	val = FUNC1(BOND_OPT_MODE, FUNC0(bond));

	return FUNC2(buf, "%s %d\n", val->string, FUNC0(bond));
}