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
struct timer_list {int dummy; } ;
struct sky2_hw {int ports; int flags; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  restart_work; struct net_device** dev; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_ISRC ; 
 scalar_t__ HZ ; 
 int SKY2_HW_RAM_BUFFER ; 
 struct sky2_hw* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct sky2_hw* hw ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  watchdog_timer ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct sky2_hw *hw = FUNC0(hw, t, watchdog_timer);

	/* Check for lost IRQ once a second */
	if (FUNC7(hw, B0_ISRC)) {
		FUNC2(&hw->napi);
	} else {
		int i, active = 0;

		for (i = 0; i < hw->ports; i++) {
			struct net_device *dev = hw->dev[i];
			if (!FUNC4(dev))
				continue;
			++active;

			/* For chips with Rx FIFO, check if stuck */
			if ((hw->flags & SKY2_HW_RAM_BUFFER) &&
			     FUNC8(dev)) {
				FUNC3(dev, "receiver hang detected\n");
				FUNC6(&hw->restart_work);
				return;
			}
		}

		if (active == 0)
			return;
	}

	FUNC1(&hw->watchdog_timer, FUNC5(jiffies + HZ));
}