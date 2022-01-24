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
struct lag_mp {struct fib_info* mfi; } ;
struct mlx5_lag {struct lag_mp lag_mp; } ;
struct fib_nh {int /*<<< orphan*/  fib_nh_dev; } ;
struct fib_info {int dummy; } ;

/* Variables and functions */
 unsigned long FIB_EVENT_NH_ADD ; 
 unsigned long FIB_EVENT_NH_DEL ; 
 int FUNC0 (struct fib_info*) ; 
 int FUNC1 (struct mlx5_lag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_lag*,int) ; 

__attribute__((used)) static void FUNC3(struct mlx5_lag *ldev,
				       unsigned long event,
				       struct fib_nh *fib_nh,
				       struct fib_info *fi)
{
	struct lag_mp *mp = &ldev->lag_mp;

	/* Check the nh event is related to the route */
	if (!mp->mfi || mp->mfi != fi)
		return;

	/* nh added/removed */
	if (event == FIB_EVENT_NH_DEL) {
		int i = FUNC1(ldev, fib_nh->fib_nh_dev);

		if (i >= 0) {
			i = (i + 1) % 2 + 1; /* peer port */
			FUNC2(ldev, i);
		}
	} else if (event == FIB_EVENT_NH_ADD &&
		   FUNC0(fi) == 2) {
		FUNC2(ldev, 0);
	}
}