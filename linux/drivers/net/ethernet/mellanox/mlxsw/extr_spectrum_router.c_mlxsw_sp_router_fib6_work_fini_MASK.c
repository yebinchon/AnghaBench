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
struct mlxsw_sp_fib6_event_work {int nrt6; int /*<<< orphan*/ * rt_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp_fib6_event_work *fib6_work)
{
	int i;

	for (i = 0; i < fib6_work->nrt6; i++)
		FUNC1(fib6_work->rt_arr[i]);
	FUNC0(fib6_work->rt_arr);
}