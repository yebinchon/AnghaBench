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
struct TYPE_2__ {scalar_t__ function; } ;
struct adapter {int tc_flower_initialized; int /*<<< orphan*/  flower_tbl; int /*<<< orphan*/  flower_stats_work; TYPE_1__ flower_stats_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct adapter *adap)
{
	if (!adap->tc_flower_initialized)
		return;

	if (adap->flower_stats_timer.function)
		FUNC1(&adap->flower_stats_timer);
	FUNC0(&adap->flower_stats_work);
	FUNC2(&adap->flower_tbl);
	adap->tc_flower_initialized = false;
}