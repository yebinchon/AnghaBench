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
struct v4l2_clk {int enable; int /*<<< orphan*/  lock; TYPE_1__* ops; scalar_t__ clk; } ;
struct TYPE_2__ {int (* enable ) (struct v4l2_clk*) ;} ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct v4l2_clk*) ; 
 int FUNC4 (struct v4l2_clk*) ; 

int FUNC5(struct v4l2_clk *clk)
{
	int ret;

	if (clk->clk)
		return FUNC0(clk->clk);

	ret = FUNC4(clk);
	if (ret < 0)
		return ret;

	FUNC1(&clk->lock);

	if (++clk->enable == 1 && clk->ops->enable) {
		ret = clk->ops->enable(clk);
		if (ret < 0)
			clk->enable--;
	}

	FUNC2(&clk->lock);

	return ret;
}