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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct bonding {int dummy; } ;
struct bond_option {int /*<<< orphan*/  id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 struct bond_option* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bonding*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 struct bonding* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d,
					  struct device_attribute *attr,
					  const char *buffer, size_t count)
{
	struct bonding *bond = FUNC5(d);
	const struct bond_option *opt;
	char *buffer_clone;
	int ret;

	opt = FUNC1(attr->attr.name);
	if (FUNC0(!opt))
		return -ENOENT;
	buffer_clone = FUNC4(buffer, count, GFP_KERNEL);
	if (!buffer_clone)
		return -ENOMEM;
	ret = FUNC2(bond, opt->id, buffer_clone);
	if (!ret)
		ret = count;
	FUNC3(buffer_clone);

	return ret;
}