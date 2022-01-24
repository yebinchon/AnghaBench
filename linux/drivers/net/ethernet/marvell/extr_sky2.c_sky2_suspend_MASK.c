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
struct sky2_port {scalar_t__ wol; } ;
struct sky2_hw {int ports; struct net_device** dev; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  watchdog_timer; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sky2_hw* FUNC2 (struct device*) ; 
 struct sky2_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_port*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct sky2_hw *hw = FUNC2(dev);
	int i;

	if (!hw)
		return 0;

	FUNC1(&hw->watchdog_timer);
	FUNC0(&hw->restart_work);

	FUNC4();

	FUNC6(hw);
	for (i = 0; i < hw->ports; i++) {
		struct net_device *dev = hw->dev[i];
		struct sky2_port *sky2 = FUNC3(dev);

		if (sky2->wol)
			FUNC8(sky2);
	}

	FUNC7(hw);
	FUNC5();

	return 0;
}