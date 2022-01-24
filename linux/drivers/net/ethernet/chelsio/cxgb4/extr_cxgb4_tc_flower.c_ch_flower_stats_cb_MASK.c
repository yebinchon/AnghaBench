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
struct adapter {int /*<<< orphan*/  flower_stats_work; } ;

/* Variables and functions */
 struct adapter* adap ; 
 int /*<<< orphan*/  flower_stats_timer ; 
 struct adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct adapter *adap = FUNC0(adap, t, flower_stats_timer);

	FUNC1(&adap->flower_stats_work);
}