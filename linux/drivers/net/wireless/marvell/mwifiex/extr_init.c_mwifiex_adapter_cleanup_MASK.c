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
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct mwifiex_adapter {int /*<<< orphan*/  hs_activate_wait_q; TYPE_1__ cmd_wait_q; int /*<<< orphan*/  devdump_timer; int /*<<< orphan*/  wakeup_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mwifiex_adapter *adapter)
{
	FUNC0(&adapter->wakeup_timer);
	FUNC1(&adapter->devdump_timer);
	FUNC2(adapter);
	FUNC3(&adapter->cmd_wait_q.wait);
	FUNC3(&adapter->hs_activate_wait_q);
}