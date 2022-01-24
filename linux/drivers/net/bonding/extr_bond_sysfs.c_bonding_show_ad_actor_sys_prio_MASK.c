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
struct TYPE_2__ {int /*<<< orphan*/  ad_actor_sys_prio; } ;
struct bonding {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bonding*) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 struct bonding* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d,
					      struct device_attribute *attr,
					      char *buf)
{
	struct bonding *bond = FUNC3(d);

	if (FUNC0(bond) == BOND_MODE_8023AD && FUNC1(CAP_NET_ADMIN))
		return FUNC2(buf, "%hu\n", bond->params.ad_actor_sys_prio);

	return 0;
}