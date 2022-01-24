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
struct nfp_fl_lag {int /*<<< orphan*/  retrans_skbs; int /*<<< orphan*/  ida_handle; int /*<<< orphan*/  lock; int /*<<< orphan*/  group_list; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_fl_lag*) ; 
 int /*<<< orphan*/  nfp_fl_lag_do_work ; 

void FUNC6(struct nfp_fl_lag *lag)
{
	FUNC0(&lag->work, nfp_fl_lag_do_work);
	FUNC1(&lag->group_list);
	FUNC4(&lag->lock);
	FUNC3(&lag->ida_handle);

	FUNC2(&lag->retrans_skbs);

	/* 0 is a reserved batch version so increment to first valid value. */
	FUNC5(lag);
}