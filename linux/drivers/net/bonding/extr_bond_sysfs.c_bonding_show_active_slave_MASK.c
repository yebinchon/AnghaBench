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
struct net_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct net_device* FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,char*,char*) ; 
 struct bonding* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d,
					 struct device_attribute *attr,
					 char *buf)
{
	struct bonding *bond = FUNC4(d);
	struct net_device *slave_dev;
	int count = 0;

	FUNC1();
	slave_dev = FUNC0(bond);
	if (slave_dev)
		count = FUNC3(buf, "%s\n", slave_dev->name);
	FUNC2();

	return count;
}