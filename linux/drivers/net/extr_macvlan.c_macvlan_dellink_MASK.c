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
struct net_device {int dummy; } ;
struct macvlan_dev {scalar_t__ mode; int /*<<< orphan*/  lowerdev; int /*<<< orphan*/  list; int /*<<< orphan*/  port; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ MACVLAN_MODE_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct macvlan_dev*) ; 
 struct macvlan_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct list_head*) ; 

void FUNC5(struct net_device *dev, struct list_head *head)
{
	struct macvlan_dev *vlan = FUNC2(dev);

	if (vlan->mode == MACVLAN_MODE_SOURCE)
		FUNC1(vlan->port, vlan);
	FUNC0(&vlan->list);
	FUNC4(dev, head);
	FUNC3(vlan->lowerdev, dev);
}