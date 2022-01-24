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
struct slave {TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int /*<<< orphan*/  primary_slave; } ;
typedef  int ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 struct slave* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,char*,char*) ; 
 struct bonding* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d,
				    struct device_attribute *attr,
				    char *buf)
{
	struct bonding *bond = FUNC4(d);
	struct slave *primary;
	int count = 0;

	FUNC1();
	primary = FUNC0(bond->primary_slave);
	if (primary)
		count = FUNC3(buf, "%s\n", primary->dev->name);
	FUNC2();

	return count;
}