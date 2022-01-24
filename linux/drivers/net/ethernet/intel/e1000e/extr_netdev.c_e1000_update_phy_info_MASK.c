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
struct e1000_adapter {int /*<<< orphan*/  update_phy_task; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __E1000_DOWN ; 
 struct e1000_adapter* adapter ; 
 struct e1000_adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_info_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct e1000_adapter *adapter = FUNC0(adapter, t, phy_info_timer);

	if (FUNC2(__E1000_DOWN, &adapter->state))
		return;

	FUNC1(&adapter->update_phy_task);
}