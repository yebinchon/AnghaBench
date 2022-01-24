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
struct gbe_slave {int slave_num; int /*<<< orphan*/  link_state; int /*<<< orphan*/  open; } ;
struct gbe_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gbe_priv*,int) ; 
 scalar_t__ FUNC1 (struct gbe_slave*) ; 
 scalar_t__ FUNC2 (struct gbe_slave*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct gbe_slave*) ; 
 int /*<<< orphan*/  FUNC5 (struct gbe_priv*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct gbe_priv*,struct net_device*,struct gbe_slave*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct gbe_priv *gbe_dev,
					  struct gbe_slave *slave,
					  struct net_device *ndev)
{
	bool sw_link_state = true, phy_link_state;
	int sp = slave->slave_num, link_state;

	if (!slave->open)
		return;

	if (FUNC1(slave))
		FUNC5(gbe_dev,
					     &sw_link_state);
	if (FUNC2(slave))
		sw_link_state =
		FUNC7(FUNC0(gbe_dev, sp), sp);

	phy_link_state = FUNC4(slave);
	link_state = phy_link_state & sw_link_state;

	if (FUNC3(&slave->link_state, link_state) != link_state)
		FUNC6(gbe_dev, ndev, slave,
					      link_state);
}