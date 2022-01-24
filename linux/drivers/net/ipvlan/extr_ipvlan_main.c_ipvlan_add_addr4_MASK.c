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
struct ipvl_dev {int /*<<< orphan*/  addrs_lock; TYPE_1__* dev; int /*<<< orphan*/  port; } ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ifup ; 
 int FUNC0 (struct ipvl_dev*,struct in_addr*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipvl_dev*,int /*<<< orphan*/ ,TYPE_1__*,char*,struct in_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ipvl_dev *ipvlan, struct in_addr *ip4_addr)
{
	int ret = -EINVAL;

	FUNC3(&ipvlan->addrs_lock);
	if (FUNC1(ipvlan->port, ip4_addr, false))
		FUNC2(ipvlan, ifup, ipvlan->dev,
			  "Failed to add IPv4=%pI4 on %s intf.\n",
			  ip4_addr, ipvlan->dev->name);
	else
		ret = FUNC0(ipvlan, ip4_addr, false);
	FUNC4(&ipvlan->addrs_lock);
	return ret;
}