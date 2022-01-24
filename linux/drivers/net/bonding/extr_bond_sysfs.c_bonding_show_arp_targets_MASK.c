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
struct TYPE_2__ {scalar_t__* arp_targets; } ;
struct bonding {TYPE_1__ params; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BOND_MAX_ARP_TARGETS ; 
 scalar_t__ FUNC0 (char*,char*,scalar_t__*) ; 
 struct bonding* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *d,
					struct device_attribute *attr,
					char *buf)
{
	struct bonding *bond = FUNC1(d);
	int i, res = 0;

	for (i = 0; i < BOND_MAX_ARP_TARGETS; i++) {
		if (bond->params.arp_targets[i])
			res += FUNC0(buf + res, "%pI4 ",
				       &bond->params.arp_targets[i]);
	}
	if (res)
		buf[res-1] = '\n'; /* eat the leftover space */

	return res;
}