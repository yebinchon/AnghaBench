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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* card_reset ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {TYPE_1__ if_ops; int /*<<< orphan*/  hw_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MWIFIEX_HW_STATUS_RESET ; 
 struct mwifiex_adapter* adapter ; 
 struct mwifiex_adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  wakeup_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct mwifiex_adapter *adapter = FUNC0(adapter, t, wakeup_timer);

	FUNC2(adapter, ERROR, "Firmware wakeup failed\n");
	adapter->hw_status = MWIFIEX_HW_STATUS_RESET;
	FUNC1(adapter);

	if (adapter->if_ops.card_reset)
		adapter->if_ops.card_reset(adapter);
}