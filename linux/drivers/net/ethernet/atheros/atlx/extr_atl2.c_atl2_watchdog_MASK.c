#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct atl2_adapter {int /*<<< orphan*/  watchdog_timer; TYPE_2__* netdev; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  REG_STS_RXD_OV ; 
 int /*<<< orphan*/  REG_STS_RXS_OV ; 
 int /*<<< orphan*/  __ATL2_DOWN ; 
 struct atl2_adapter* adapter ; 
 struct atl2_adapter* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watchdog_timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct atl2_adapter *adapter = FUNC1(adapter, t, watchdog_timer);

	if (!FUNC6(__ATL2_DOWN, &adapter->flags)) {
		u32 drop_rxd, drop_rxs;
		unsigned long flags;

		FUNC4(&adapter->stats_lock, flags);
		drop_rxd = FUNC0(&adapter->hw, REG_STS_RXD_OV);
		drop_rxs = FUNC0(&adapter->hw, REG_STS_RXS_OV);
		FUNC5(&adapter->stats_lock, flags);

		adapter->netdev->stats.rx_over_errors += drop_rxd + drop_rxs;

		/* Reset the timer */
		FUNC2(&adapter->watchdog_timer,
			  FUNC3(jiffies + 4 * HZ));
	}
}