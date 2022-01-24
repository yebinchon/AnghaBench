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
struct v4l2_clk {int /*<<< orphan*/  lock; TYPE_1__* ops; scalar_t__ clk; } ;
struct TYPE_2__ {int (* set_rate ) (struct v4l2_clk*,unsigned long) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 long FUNC0 (scalar_t__,unsigned long) ; 
 int FUNC1 (scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct v4l2_clk*,unsigned long) ; 
 int FUNC5 (struct v4l2_clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_clk*) ; 

int FUNC7(struct v4l2_clk *clk, unsigned long rate)
{
	int ret;

	if (clk->clk) {
		long r = FUNC0(clk->clk, rate);
		if (r < 0)
			return r;
		return FUNC1(clk->clk, r);
	}

	ret = FUNC5(clk);

	if (ret < 0)
		return ret;

	FUNC2(&clk->lock);
	if (!clk->ops->set_rate)
		ret = -ENOSYS;
	else
		ret = clk->ops->set_rate(clk, rate);
	FUNC3(&clk->lock);

	FUNC6(clk);

	return ret;
}