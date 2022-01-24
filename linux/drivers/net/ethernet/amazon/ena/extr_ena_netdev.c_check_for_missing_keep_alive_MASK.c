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
struct TYPE_2__ {int /*<<< orphan*/  wd_expired; } ;
struct ena_adapter {scalar_t__ keep_alive_timeout; scalar_t__ last_keep_alive_jiffies; int /*<<< orphan*/  flags; int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  syncp; TYPE_1__ dev_stats; int /*<<< orphan*/  netdev; int /*<<< orphan*/  wd_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ; 
 int /*<<< orphan*/  ENA_REGS_RESET_KEEP_ALIVE_TO ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ena_adapter *adapter)
{
	unsigned long keep_alive_expired;

	if (!adapter->wd_state)
		return;

	if (adapter->keep_alive_timeout == ENA_HW_HINTS_NO_TIMEOUT)
		return;

	keep_alive_expired = FUNC1(adapter->last_keep_alive_jiffies +
					   adapter->keep_alive_timeout);
	if (FUNC6(FUNC3(keep_alive_expired))) {
		FUNC0(adapter, drv, adapter->netdev,
			  "Keep alive watchdog timeout.\n");
		FUNC4(&adapter->syncp);
		adapter->dev_stats.wd_expired++;
		FUNC5(&adapter->syncp);
		adapter->reset_reason = ENA_REGS_RESET_KEEP_ALIVE_TO;
		FUNC2(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
	}
}