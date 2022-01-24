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
struct net_device {int ifindex; } ;
struct bonding {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct bonding *bond)
{
	const struct net_device *slave;
	int ifindex;

	FUNC1();
	slave = FUNC0(bond);
	ifindex = slave ? slave->ifindex : 0;
	FUNC2();
	return ifindex;
}