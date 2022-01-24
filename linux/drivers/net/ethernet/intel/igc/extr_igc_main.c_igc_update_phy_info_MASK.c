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
struct igc_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct igc_adapter* adapter ; 
 struct igc_adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phy_info_timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct igc_adapter *adapter = FUNC0(adapter, t, phy_info_timer);

	FUNC1(&adapter->hw);
}