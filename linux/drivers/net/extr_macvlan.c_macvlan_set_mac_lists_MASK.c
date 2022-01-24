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
struct net_device {int dummy; } ;
struct macvlan_dev {struct net_device* lowerdev; TYPE_1__* port; int /*<<< orphan*/  mc_filter; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*,struct macvlan_dev*) ; 
 struct macvlan_dev* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC3(dev);

	FUNC2(vlan->mc_filter, dev, vlan);

	FUNC1(vlan->lowerdev, dev);
	FUNC0(vlan->lowerdev, dev);

	/* This is slightly inaccurate as we're including the subscription
	 * list of vlan->lowerdev too.
	 *
	 * Bug alert: This only works if everyone has the same broadcast
	 * address as lowerdev.  As soon as someone changes theirs this
	 * will break.
	 *
	 * However, this is already broken as when you change your broadcast
	 * address we don't get called.
	 *
	 * The solution is to maintain a list of broadcast addresses like
	 * we do for uc/mc, if you care.
	 */
	FUNC2(vlan->port->mc_filter, vlan->lowerdev, NULL);
}